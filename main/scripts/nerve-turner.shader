//-----------------------------------------------------------------------------
// MODELS
//-----------------------------------------------------------------------------

models\multiplayer\hedge\hedge
{
	cull twosided
	{
		map models/mapobjects/bush/bush.tga
		alphaFunc GE128
		depthWrite
		rgbgen vertex
	}
}


models\multiplayer\cmarker\shovel
{
        
	{
        	map models/mapobjects/toolshed/shovel_xl.tga
		rgbgen vertex
	}

	{
        	map models/multiplayer/cmarker/shovel_red.tga
		blendFunc	GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen	wave sin 0 1 0 .25
	}
}


models\multiplayer\cmarker\wood
{
        
	{
        	map models/multiplayer/cmarker/wood.tga
		rgbgen vertex
	}

	{
        	map models/multiplayer/cmarker/wood_red.tga
		blendFunc	GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen	wave sin 0 1 0 .25
	}
}


models\multiplayer\centers\supply\tent2_supply
{

	{
		map models/multiplayer/centers/tent_sky_old.tga
		rgbgen vertex
		tcgen environment
		tcmod scale 1.5 1.5
		tcmod scroll 0 .02
		blendfunc add
	}

	{
		map models/multiplayer/centers/supply/tent2_supply.tga
		rgbgen vertex
		blendFunc	GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		depthwrite
	}
	

}


models\multiplayer\centers\triage\tent2_triage
{

	{
		map models/multiplayer/centers/tent_sky_old.tga
		rgbgen vertex
		tcgen environment
		tcmod scale 1.5 1.5
		tcmod scroll 0 .02
		blendfunc add
	}

	{
		map models/multiplayer/centers/triage/tent2_triage.tga
		rgbgen vertex
		blendFunc	GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		depthwrite
	}
	

}


models\multiplayer\centers\command\tent2_command
{

	{
		map models/multiplayer/centers/tent_sky_old.tga
		rgbgen vertex
		tcgen environment
		tcmod scale 1.5 1.5
		tcmod scroll 0 .02
		blendfunc add
	}

	{
		map models/multiplayer/centers/command/tent2_command.tga
		rgbgen vertex
		blendFunc	GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		depthwrite
	}
	

}


models\multiplayer\centers\tent_flaps
{

	{
		map models/multiplayer/centers/tent_sky_old.tga
		rgbgen vertex
	}
}


models\multiplayer\hammer\hammer
{
        
	{
		map models/multiplayer/hammer/hammer.tga
		rgbgen lightingdiffuse
	}

}


models\multiplayer\spear\spear
{
	{
		map models/multiplayer/spear/spear.tga
	}
}


models\multiplayer\spear\spear_energy
{
	deformVertexes wave 10 sin 0 .1 0 1
	{
		map models/multiplayer/spear/spear_energy.tga
		tcmod scroll 0 .5 
		blendFunc	GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen	wave sin 0 .5 0 .15
	}

}


models\multiplayer\flagpole\flagpole
{
	{
		map models/multiplayer/flagpole/flag_clouds.tga
		tcgen environment
	}
}


models\multiplayer\syringe\syringe
{
	cull disable
	{
		map models/multiplayer/syringe/fluid.tga
		rgbgen lightingdiffuse
		blendfunc blend
		tcmod scale 4 6
		tcmod scroll 0 -.8
		depthwrite
	}
			
	{
		map models/multiplayer/syringe/syringe.tga
		rgbgen lightingdiffuse
		blendfunc gl_src_alpha gl_one_minus_src_alpha
		depthwrite
	}
	
	{
		map models/multiplayer/syringe/syringe_reflections.tga
		rgbgen lightingdiffuse
		blendfunc gl_src_alpha gl_one_minus_src_alpha
		depthwrite
	}

}


models\multiplayer\syringe\plunger
{
//	cull disable
	{
		map models/multiplayer/syringe/plunger.tga
		rgbgen lightingdiffuse
	}
}


models\multiplayer\treasure\treasure
{
	cull disable
	deformvertexes autosprite
	surfaceparm trans
	sort nearest
	nomipmaps
	{
		map models/multiplayer/treasure/treasure.tga
		tcmod stretch sin .8 .08 0 .8
		blendfunc gl_src_alpha gl_one_minus_src_alpha
		//depthwrite
	}
}



