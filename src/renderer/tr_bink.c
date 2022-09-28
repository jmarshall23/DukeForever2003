// tr_bink.c
//

#include "tr_local.h"

/*
================
R_OpenVideo
================
*/
qboolean R_OpenVideo(const char* fileName, video_t *video) {
	video->Bink = BinkOpen(fileName, 0);
	if (!video->Bink)
	{
		ri.Printf(PRINT_WARNING, "Failed to open video %s\n", fileName);
		return qfalse;
	}

	video->video_buffer = ri.Hunk_AllocateTempMemory(video->Bink->Width * video->Bink->Height * 4);

	return qtrue;
}

/*
================
R_ImageForVideoTime
================
*/
qboolean R_ImageForVideoTime(video_t* video, qboolean isLooping, int millisecond)
{
	HBINK Bink;

	Bink = video->Bink;

	if (!BinkWait(Bink))
	{
		if (Bink->FrameNum == Bink->Frames)
		{
			if (!isLooping)
			{
				video->isVideoDone = qtrue;
				return qfalse;
			}

			Bink->FrameNum = 0;
		}

		BinkDoFrame(Bink);

		BinkCopyToBufferRect(Bink,
			(void*)video->video_buffer,
			Bink->Width * 4,
			Bink->Height,
			0, 0,
			0, 0, Bink->Width, Bink->Height,
			BINKSURFACE32 |
			BINKCOPYALL);

		// RGB to BGR
		byte* image_data = video->video_buffer;
		for (int i = 0; i < Bink->Width * Bink->Height * 4; i += 4)
		{
			byte r = image_data[i + 0];
			image_data[i + 0] = image_data[i + 2];
			image_data[i + 2] = r;
		}

		BinkNextFrame(Bink);
	}

	video->isVideoDone = qfalse;

	return qtrue;
}

/*
================
R_CloseVideo
================
*/
void R_CloseVideo(video_t* video) {
	if (video == NULL || video->Bink == NULL || video->video_buffer == NULL)
	{
		ri.Error(ERR_FATAL, "R_CloseVideo: tried to close a invalid video");
		return;
	}

	BinkClose(video->Bink);
	video->Bink = NULL;
}