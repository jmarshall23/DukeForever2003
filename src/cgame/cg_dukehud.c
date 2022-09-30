// cg_dukehud.c
//

#include "cg_local.h"

hudAssets_t				hudAssets;

/*
====================
CG_DrawShader
====================
*/
void CG_DrawShader(int x, int y, qhandle_t shader) {
	int width;
	int height;
	int tw, th;

	if (!trap_GetShaderStageInfo(shader, 0, &width, &height)) {
		return;
	}

	CG_AdjustFrom640(&x, &y, &tw, &th);
	trap_R_DrawStretchPic(x, y, width, height, 0, 0, 1, 1, shader);
}

void CG_PrintCenterHudStat(int x, int stat)
{
	playerState_t* ps;

	ps = &cg.snap->ps;

	if (ps->stats[stat] >= 100)
	{
		CG_DrawBigString(x, SCREEN_HEIGHT - 56, va("%d", ps->stats[stat]), 1.0f);
	}
	else if (ps->stats[stat] >= 10)
	{
		CG_DrawBigString(x + BIGCHAR_WIDTH, SCREEN_HEIGHT - 56, va("%d", ps->stats[stat]), 1.0f);
	}
	else
	{
		CG_DrawBigString(x + (BIGCHAR_WIDTH * 2), SCREEN_HEIGHT - 56, va("%d", ps->stats[stat]), 1.0f);
	}
}

/*
====================
CG_InitDukeHud
====================
*/
void CG_InitDukeHud(void) {
	hudAssets.hudfin = trap_R_RegisterShaderNoMip("ui/assets2/hudfin1920.tga");
}

/*
====================
CG_DrawDukeHud
====================
*/
void CG_DrawDukeHud(void) {
	CG_DrawShader(0, SCREEN_HEIGHT - 102, hudAssets.hudfin);

	CG_PrintCenterHudStat(210, STAT_HEALTH);
	CG_PrintCenterHudStat(300, STAT_ARMOR);
}