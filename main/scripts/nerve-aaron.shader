ui/assets/limbo_chat_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_chat_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
ui/assets/mp_score_objectives
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_chat_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}
ui/assets/mp_score_team
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_player_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
	}
}
ui/assets/limbo_player_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_player_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
ui/assets/limbo_team_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_team_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
ui/assets/limbo_class_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_class_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
ui/assets/limbo_weapon_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_weapon_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
ui/assets/limbo_score_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_score_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
ui/assets/limbo_view_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_view_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

ui/assets/team_hilight2
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/team_hilight2.tga
		blendfunc GL_DST_COLOR GL_ONE
	}
}

ui/assets/button_glow
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/button_glow.tga
		blendfunc GL_DST_COLOR GL_ONE
	}
}

ui/assets/button_glow128
{
	nopicmip
	nomipmaps
	{
		map ui/assets/button_glow128.tga
		blendfunc GL_DST_COLOR GL_ONE
	}
}

ui/assets/button_glow128_tall
{
	nopicmip
	nomipmaps
	{
		map ui/assets/button_glow128_tall.tga
		blendfunc GL_DST_COLOR GL_ONE
	}
}

textures/skies/rf_wrecked_castlesky_trench
{
	qer_editorimage textures/skies/topclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 512 
        //q3map_sun	0.89 0.93 1 85 135 55
	q3map_surfacelight 85
	fogvars ( .15 .15 .155 ) 3200
//	skyfogvars ( .23 .23 .24 ) .005

	surfaceparm nodlight	// (SA) added so dlights don't affect surface

	skyparms full 200 -
	
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.002 0.002
		tcMod scale 1 1
		tcMod turb 0 0.05 0 .08

		depthWrite
	}
	{
		map textures/skies/dimclouds.tga
		blendfunc GL_ONE GL_ONE
		tcMod scroll -0.001 -0.005
		tcMod scale 10 10
	}
}

textures/lights/light_m25blue
{
    //bright white KP light
    q3map_lightimage textures/lights/light_m25blue.tga
    qer_editorimage textures/lights/light_m25blue.tga
    q3map_surfacelight 8000
    light 1
    surfaceparm nomarks
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/lights/light_m25blue.tga
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/lights/light_m25blue.tga
        blendFunc GL_ONE GL_ONE
    }
}

//models\multiplayer\syringe\syringe
//{	
//	{
//		map models/multiplayer/syringe/syringe_unwrap.tga
//		blendfunc gl_src_alpha gl_one_minus_src_alpha
//		depthwrite		
//	}
//	{
//		map models/multiplayer/syringe/syringe_ref.tga
//		blendfunc gl_src_alpha gl_one_minus_src_alpha
//		//tcgen environment
//	}
//}

// Added by Brandon

textures/skies/km_assaultsky

{
	qer_editorimage textures/skies/topclouds.tga
	q3map_lightimage textures/skies/n_blue.tga

	nocompress
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	q3map_globaltexture
	q3map_lightsubdivide 2048
	q3map_sun	1.0 0.8 0.8 160 295 40
	q3map_surfacelight 40

	skyparms full 200 -
	
	{
		map textures/skies/sunset1.tga
	//	tcMod scroll -0.001 -0.003
		tcMod scale 1 1
		depthWrite
	}
	{
		map textures/skies/assa_clouds1.tga
		blendfunc blend
		tcMod scroll 0.0005 0.00
		tcMod scale 2 1
	}
}

textures/lights/window_josho
{
    //q3map_lightimage textures/miltary_wall/window_m02.blend.tga
    qer_editorimage textures/miltary_wall/window_m02.tga    
    surfaceparm nomarks
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/miltary_wall/window_m02.tga
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/miltary_wall/window_m02.blend.tga
        blendFunc GL_ONE GL_ONE
    }
}

ui/assets/quickmessage_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/quickmessage_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

ui/assets/limbo_spawn_background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_spawn_background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

ui/assets/limbo_menu1
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/limbo_menu1.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

ui/assets/button_click
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/button_click.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

ui/assets/button
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/button.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

ui/assets/background
{
	nopicmip
	nomipmaps
	nocompress
	{
		map ui/assets/background.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA				
	}
}

gfx/2d/compass
{
	nopicmip
	nomipmaps
	nocompress
	{
		map gfx/2d/compass.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA				
	}
}

gfx/2d/compass2
{
	nopicmip
	nomipmaps
	nocompress
	{
		map gfx/2d/compass2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA				
	}
}