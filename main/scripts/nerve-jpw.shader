textures/liquids/water_beach_nerve
{
	qer_editorimage textures/liquids/pool3d_3.tga
	qer_trans .5
	q3map_globaltexture
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	surfaceparm nomarks	// don't play ripple effects when shooting into water
	tesssize 384
	
	cull disable
	nofog
	deformVertexes wave 160 sin 0 10 0 .3	// the chop

	waterfogvars ( 0.1 0.1 0.1 ) 512
//	waterfogvars ( 0.1 0.1 0.1 ) .005
//	{
//		fog on
//		map $lightmap`
//		blendFunc GL_dst_color GL_zero
//		rgbgen identity		
//	}
	{ 
		fog on
		map textures/liquids/ocean_m1.tga
		rgbgen wave sin .4 0 0 .5	
		tcmod scale .2 .1
		tcmod scroll .03 .02		
	}	
	{ 
		map textures/liquids/ocean_m1.tga
		blendFunc GL_src_alpha GL_zero_minus_src_alpha
		alphagen const .5		
		tcmod scale .2 .1
		tcmod scroll -.03 -.02	
	}

// single-pass version, ONLY this pass
//	{ 
//		fog on
//		map textures/liquids/ocean_m1.tga
//		tcmod scale .4 .2
//		tcmod scroll -.01 -.03
//	}	

	
//	{ 
//		map textures/liquids/ocean_m2.tga
//		blendFunc GL_dst_color GL_one
//		rgbgen const ( 0.25 0.25 0.25 )
//		rgbgen identity		
//		tcmod scale -.6 .5
//		tcmod scroll -.01 -.01
//	}
}

venomTrailShader
{
	cull none
	entityMergable
	{
		map sprites/multiplayer/nailtrail.tga
		blendFunc GL_ONE GL_ONE
		rgbGen 	vertex
		alphaGen vertex
	}
}
