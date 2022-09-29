// DHM
gfx/2d/buildHint
{
	nopicmip
	nomipmaps
	{
		map gfx/2d/buildhint.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

gfx/2d/disarmHint
{
	nopicmip
	nomipmaps
	{
		map gfx/2d/disarmhint.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

gfx/2d/reviveHint
{
	nopicmip
	nomipmaps
	{
		map gfx/2d/revivehint.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

gfx/2d/dynamiteHint
{
	nopicmip
	nomipmaps
	{
		map gfx/2d/dynamitehint.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

sprites/medic_revive
{
	nopicmip
	nomipmaps
	{
		map sprites/medicrevive.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/voiceChat
{
	nopicmip
	nomipmaps
	{
		map sprites/voicechat.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/voiceMedic
{
	nopicmip
	nomipmaps
	{
		map sprites/voicemedic.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/voiceAmmo
{
	nopicmip
	nomipmaps
	{
		map sprites/voiceammo.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/voice_yes
{
	nopicmip
	nomipmaps
	{
		map sprites/voice_yes.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/voice_no
{
	nopicmip
	nomipmaps
	{
		map sprites/voice_no.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

icons/iconw_hammer_1
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_hammer.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

// (selected version)
icons/iconw_hammer_1_select
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_hammer_select.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

icons/iconw_pliers_1
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_pliers_1.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

// (selected version)
icons/iconw_pliers_1_select
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_pliers_1_select.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

icons/iconw_ammopack_1
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_ammopack_1.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

// (selected version)
icons/iconw_ammopack_1_select
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_ammopack_1_select.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

icons/iconw_medheal_1
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_medheal.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

// (selected version)
icons/iconw_medheal_1_select
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_medheal_select.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

icons/iconw_smokegrenade_1
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_smokegrenade_1.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

// (selected version)
icons/iconw_smokegrenade_1_select
{
	nopicmip
	nomipmaps
	{
		map icons/iconw_smokegrenade_1_select.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}

// ===========================
// Gun fire hitting grass/sand
// ===========================
dirtParticle1
{
	cull none
	entityMergable
	{
		map models/weaphits/bullet_sand1.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

dirtParticle2
{
	cull none
	entityMergable
	{
		map models/weaphits/bullet_sand2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

dirtParticle3
{
	cull none
	entityMergable
	{
		map models/weaphits/bullet_sand3.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

dirt_splash
{
	cull none
	entityMergable
	{
		map models/weaphits/sand_splash.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

water_splash
{
	cull none
	entityMergable
	{
		map models/weaphits/water_splash.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}