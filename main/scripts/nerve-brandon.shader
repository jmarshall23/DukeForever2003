// Added by Brandon

textures/skies/km_beachsky

{
	qer_editorimage textures/skies/beachsky_m01
	q3map_lightimage textures/skies/n_blue2.tga
	nocompress
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	q3map_globaltexture
	q3map_lightsubdivide 2048
	q3map_sun	0.274632 0.274632 0.39 35 120 45
	q3map_surfacelight 30

	skyparms full 200 -
	
	{
		map textures/skies/newclouds2.tga
	//	tcMod scroll 0.005 0.0005
		tcMod scale 16.0 16.0
		depthWrite
	}	

}

