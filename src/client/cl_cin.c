/*
===========================================================================

Return to Castle Wolfenstein single player GPL Source Code
Copyright (C) 1999-2010 id Software LLC, a ZeniMax Media company. 

This file is part of the Return to Castle Wolfenstein single player GPL Source Code (RTCW SP Source Code).  

RTCW SP Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

RTCW SP Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with RTCW SP Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the RTCW SP Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the RTCW SP Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/

#include "client.h"

video_t video;

void CIN_Init(void) {
	memset(&video, 0, sizeof(video_t));
}

void CIN_CloseAllVideos( void ) {
	if (video.Bink != NULL)
	{
		R_CloseVideo(&video);
	}

	if(cls.state == CA_CINEMATIC)
		cls.state = CA_DISCONNECTED;
}


static int CIN_HandleForVideo( void ) {
	return 0;
}


extern int CL_ScaledMilliseconds( void );

/*
==================
SCR_StopCinematic
==================
*/
e_status CIN_StopCinematic( int handle ) {
	CIN_CloseAllVideos();
	return FMV_EOF;
}

/*
==================
SCR_RunCinematic

Fetch and decompress the pending frame
==================
*/
e_status CIN_RunCinematic( int handle ) {
	if (R_ImageForVideoTime(&video, qfalse, CL_ScaledMilliseconds())) {
		return FMV_PLAY;
	}
	
	return FMV_EOF;
}

/*
==================
CL_PlayCinematic

==================
*/
int CIN_PlayCinematic( const char *arg, int x, int y, int w, int h, int systemBits ) {
	CIN_StopCinematic(0);

	if (!R_OpenVideo(arg, &video))
		return -1;

	cls.state = CA_CINEMATIC;

	return 0;
}

void CIN_SetExtents( int handle, int x, int y, int w, int h ) {

}

void CIN_SetLooping( int handle, qboolean loop ) {
	
}

qboolean CIN_IsVideoDonePlaying(void) {
	qboolean isDone;
	int x, y, w, h;

	R_GetVideoInfo(&video, &w, &h, &isDone);
	return !isDone;
}

/*
==================
SCR_DrawCinematic

==================
*/
void CIN_DrawCinematic( int handle ) {
	int x, y, w, h;  //, barheight;
	byte    *buf; 
	qboolean isDone;

	if (video.Bink == NULL)
	{
		return;
	}

	x = 0;
	y = 0;	
	R_GetVideoInfo(&video, &w, &h, &isDone);
	SCR_AdjustFrom640( &x, &y, &w, &h );

	if (isDone)
	{
		CIN_StopCinematic(0);
		return;
	}

	re.DrawStretchRaw(x, y, w, h, w, h, video.video_buffer, 0, qfalse);
}

/*
==============
CL_PlayCinematic_f
==============
*/
void CL_PlayCinematic_f( void ) {
	char    *arg, *s;
	qboolean holdatend;
	int bits = CIN_system;

	Com_DPrintf( "CL_PlayCinematic_f\n" );
	if ( cls.state == CA_CINEMATIC ) {
		SCR_StopCinematic();
	}

	arg = Cmd_Argv( 1 );
	s = Cmd_Argv( 2 );

	holdatend = qfalse;
	if ( ( s && s[0] == '1' ) || Q_stricmp( arg,"demoend.roq" ) == 0 || Q_stricmp( arg,"end.roq" ) == 0 ) {
		bits |= CIN_hold;
	}
	if ( s && s[0] == '2' ) {
		bits |= CIN_loop;
	}
	if ( s && s[0] == '3' ) {
		bits |= CIN_letterBox;
	}

	S_StopAllSounds();
	// make sure volume is up for cine
	S_FadeAllSounds( 1, 0 );

	CIN_PlayCinematic(arg, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, bits);
}


void SCR_DrawCinematic( void ) {
	if ( video.Bink ) {
		CIN_DrawCinematic( 0 );
	}
}

void SCR_RunCinematic( void ) {
	if (video.Bink) {
		CIN_RunCinematic( 0 );
	}
}

void SCR_StopCinematic( void ) {
	if (video.Bink) {
		CIN_StopCinematic( 0 );
		S_StopAllSounds();
	}
}

void CIN_UploadCinematic( int handle ) {

}

