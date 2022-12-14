teslaDamageEffect
{
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
}

teslaAltDamageEffect
{
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
}

smokeParticle
{
	cull none
	{
		map sprites/smokepuff.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen vertex
	}
}

bulletParticleTrail
{
	cull none
	entityMergable
	{
		map sprites/bullettrail.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen vertex
	}
}

loperGroundCharge
{
	allowCompress
	cull none
	polygonOffset
	nofog
	entityMergable
	{
		map sprites/loperGroundCharge.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		rgbGen 	vertex
		alphaGen vertex
	}
}

sparkFlareParticle
{
	cull none
	entityMergable
	{
		map gfx\misc\sunflare1.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		rgbGen 	vertex
		alphaGen vertex
	}
}

sparkParticle
{
	cull none
	entityMergable
	{
		map sprites/spark.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		rgbGen 	vertex
		alphaGen vertex
	}
}

smokeTrail
{
	cull none
	entityMergable
	{
		map sprites/smoketrail2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}

zombieSpiritTrail
{
	cull none
	//entityMergable		// allow all the sprites to be merged together
	{
		map sprites/spirit_trail.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		rgbGen		vertex
		alphaGen	vertex
	}
}

zombieSpiritSkull
{
	cull none
	
	

	{
		map models/mapobjects/skull/skull_spirit.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	entity
	}
	
}

helgaSpiritTrail
{
	cull none
	{
		map sprites/spirit_trail.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		rgbGen		vertex
		alphaGen	vertex
	}
}

helgaSpiritGhost
{
	cull none
	surfaceparm nodlight
	deformVertexes wave 100 sin 0.75 1.5 0 0.75
	{
		map models/players/beast/ghost.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	//	blendFunc blend
	//	rgbGen		vertex
		alphaGen	entity
	}
	
}

//--------------------------------------------------------------------
// Zombie Death effects
zombieDeathDust
{
	// expand the surface out from the model surface
	deformVertexes wave 100 sin 1 0 0 0
	// give it some character
	deformVertexes wave 94 sin 0 1 0 1.2
	cull none
	{
		map models/players/zombie/zom_body1.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		//tcGen environment
		alphaGen normalzfade 0.7 -2.0 -0.5
        //tcmod rotate 1200
        //tcmod scroll 1 .2
	}
}

zombieDeathWindTrail
{
	cull twosided
	{
		map sprites/zombie_dust.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

zombieBodyFade
{
	cull twosided
	surfaceparm	trans
	{
		map models/players/zombie/zom_body1.tga
		//blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaFunc GE128
		depthWrite
		rgbGen lightingDiffuse
		alphaGen normalzfade 1.0 -1.0 -1000		// -1000 = zombie Hack
	}
}

zombieHeadFade
{
	cull twosided
	surfaceparm	trans
	{
		map models/players/zombie/zom_head1.tga
		//blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaFunc GE128
		depthWrite
		rgbGen lightingDiffuse
		alphaGen normalzfade 1.0 -1.0 -1000		// -1000 = zombie Hack
	}
}

// these used to be blendFunc add, but we made them alpha so they would fog better (the ablack.tga is an alpha version of the 8x8 black texture used when we need blend func anims like this)

grenadeExplosion
{
	cull disable
	{
		animmap 7 gfx/colors/ablack.tga sprites/fire_sm_a.tga sprites/fire_sm_b.tga sprites/fire_sm_c.tga sprites/fire_sm_d.tga sprites/fire_sm_e.tga sprites/fire_sm_f.tga
		rgbGen wave inversesawtooth 0 1 0 7
		blendFunc GL_SRC_ALPHA GL_ONE
	}
	{
		animmap 7  sprites/fire_sm_a.tga sprites/fire_sm_b.tga sprites/fire_sm_c.tga sprites/fire_sm_d.tga sprites/fire_sm_e.tga sprites/fire_sm_f.tga gfx/colors/ablack.tga
		rgbGen wave sawtooth 0 1 0 7
		blendFunc GL_SRC_ALPHA GL_ONE
	}
}


rocketExplosion
{
	cull disable
	{
		animmap 7 gfx/colors/ablack.tga sprites/fire_sm_a.tga sprites/fire_sm_b.tga sprites/fire_sm_c.tga sprites/fire_sm_d.tga sprites/fire_sm_e.tga sprites/fire_sm_f.tga
		rgbGen wave inversesawtooth 0 1 0 7
		blendFunc GL_SRC_ALPHA GL_ONE
	}
	{
		animmap 7  sprites/fire_sm_a.tga sprites/fire_sm_b.tga sprites/fire_sm_c.tga sprites/fire_sm_d.tga sprites/fire_sm_e.tga sprites/fire_sm_f.tga gfx/colors/ablack.tga
		rgbGen wave sawtooth 0 1 0 7
		blendFunc GL_SRC_ALPHA GL_ONE
	}
}

// Ridah, temp only
//flamethrowerHit
//{
//	cull disable
//	{
//		animmap 12 sprites/fire_sm_a.tga sprites/fire_sm_b.tga sprites/fire_sm_c.tga sprites/fire_sm_d.tga sprites/fire_sm_e.tga sprites/fire_sm_f.tga
//		rgbGen wave inversesawtooth 0 1 0 12
//		blendfunc GL_SRC_ALPHA GL_ONE
//	}
//	{
//		animmap 12 sprites/fire_sm_b.tga sprites/fire_sm_c.tga sprites/fire_sm_d.tga sprites/fire_sm_e.tga sprites/fire_sm_f.tga gfx/colors/black.tga
//		rgbGen wave sawtooth 0 1 0 12
//		blendfunc GL_SRC_ALPHA GL_ONE
//	}
//}

lightningBolt
{
	//nomipmap
	nopicmip	// dont scale with texture details, since it looks bad
	cull disable
	nofog
	entityMergable
	{
		map sprites\lightning.tga
		blendfunc GL_SRC_ALPHA GL_ONE	// needs to be this or we get fog discoloration
		rgbGen 	vertex
		alphaGen vertex
	}
}

lightningBoltGreen
{
	nopicmip	// dont scale with texture details, since it looks bad
	cull disable
	nofog
	entityMergable
	{
		map sprites\lightninggreen.tga
		blendfunc GL_SRC_ALPHA GL_ONE	// needs to be this or we get fog discoloration
		rgbGen 	vertex
		alphaGen vertex
	}
}

lightningHitWall
{
	polygonOffset
	{
		map sprites/lightningGlow.tga
		blendfunc GL_SRC_ALPHA GL_ONE	// needs to be this or we get fog discoloration
		rgbGen 	vertex
		alphaGen vertex
	}
}

lightningWave
{
	nofog
	polygonOffset
	{
		map sprites/lightningWave.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_COLOR	// needs to be this or we get fog discoloration
		rgbGen 	vertex
		alphaGen vertex
	}
}

flamethrowerBlueStream
{
//	nofog
	cull none
//	entityMergable
	{
		map sprites\fthrow_bluestream1.tga
//		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_COLOR
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	// needs to be this or we get fog discoloration
		rgbGen 	vertex
		alphaGen vertex
	}
}

flamethrowerFireStream
{
	nofog
	cull none
	entityMergable
	{
		map sprites\fthrow_firestream2.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_COLOR
		rgbGen 	vertex
		alphaGen vertex
	}
}

// character on fire effect
entityOnFire1
{
	allowCompress
	// give it some character
	deformVertexes wave 45 sin 0 10 0 -.6	// a negative frequency is for Z deformation based on normal
	cull none
	{	// flame top-side
		animmapcomp 20 sprites/clnfire_lg/spr000.tga sprites/clnfire_lg/spr001.tga sprites/clnfire_lg/spr002.tga sprites/clnfire_lg/spr003.tga sprites/clnfire_lg/spr004.tga sprites/clnfire_lg/spr005.tga sprites/clnfire_lg/spr006.tga sprites/clnfire_lg/spr007.tga sprites/clnfire_lg/spr008.tga sprites/clnfire_lg/spr009.tga sprites/clnfire_lg/spr010.tga sprites/clnfire_lg/spr011.tga sprites/clnfire_lg/spr012.tga sprites/clnfire_lg/spr013.tga sprites/clnfire_lg/spr014.tga sprites/clnfire_lg/spr015.tga
		animmapnocomp 20 sprites/clnfire/spr000.tga sprites/clnfire/spr001.tga sprites/clnfire/spr002.tga sprites/clnfire/spr003.tga sprites/clnfire/spr004.tga sprites/clnfire/spr005.tga sprites/clnfire/spr006.tga sprites/clnfire/spr007.tga sprites/clnfire/spr008.tga sprites/clnfire/spr009.tga sprites/clnfire/spr010.tga sprites/clnfire/spr011.tga sprites/clnfire/spr012.tga sprites/clnfire/spr013.tga sprites/clnfire/spr014.tga sprites/clnfire/spr015.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		alphaGen normalzfade 1.0 -0.7 0.5
	}
}

entityOnFire2
{
	allowCompress
	{
		animmapcomp 20 sprites/clnfire_lg/spr000.tga sprites/clnfire_lg/spr001.tga sprites/clnfire_lg/spr002.tga sprites/clnfire_lg/spr003.tga sprites/clnfire_lg/spr004.tga sprites/clnfire_lg/spr005.tga sprites/clnfire_lg/spr006.tga sprites/clnfire_lg/spr007.tga sprites/clnfire_lg/spr008.tga sprites/clnfire_lg/spr009.tga sprites/clnfire_lg/spr010.tga sprites/clnfire_lg/spr011.tga sprites/clnfire_lg/spr012.tga sprites/clnfire_lg/spr013.tga sprites/clnfire_lg/spr014.tga sprites/clnfire_lg/spr015.tga
		animmapnocomp 20 sprites/clnfire/spr000.tga sprites/clnfire/spr001.tga sprites/clnfire/spr002.tga sprites/clnfire/spr003.tga sprites/clnfire/spr004.tga sprites/clnfire/spr005.tga sprites/clnfire/spr006.tga sprites/clnfire/spr007.tga sprites/clnfire/spr008.tga sprites/clnfire/spr009.tga sprites/clnfire/spr010.tga sprites/clnfire/spr011.tga sprites/clnfire/spr012.tga sprites/clnfire/spr013.tga sprites/clnfire/spr014.tga sprites/clnfire/spr015.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		alphaGen normalzfade 1.0 -0.7 1.3
	}
	{	// blue under-side
		map sprites/inferno_blue.tga
		blendFunc GL_SRC_ALPHA GL_ONE
		//tcGen environment
		alphaGen normalzfade 1.0 -2.0 0.6
		//tcmod rotate 12
		//tcmod scroll 1 .2
	}
}

sprites/smokeMap
{
	qer_editorimage sprites/smokeMap.tga
	surfaceparm trans
	surfaceparm nonsolid

	allowCompress
	// give it some character
//	deformVertexes wave 0 sin 0 2 0 0	// a negative frequency is for Z deformation based on normal
	deformVertexes wave 30 sin 0.6 1.4 0.6 0.42	// a negative frequency is for Z deformation based on normal
	deformVertexes wave 25 sin 0 10 0 -0.6	// a negative frequency is for Z deformation based on normal
	cull none
	{	// water reflection
		map sprites/smokeMap.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen normalzfade 0.85 -0.9 0.9
		//tcGen environment
		tcmod scroll 0 -0.33
		tcmod scale 4 1
	}
//	{	// water dripping
//		map textures/liquids/water_m6.tga
//		blendFunc GL_SRC_ALPHA GL_ONE
//		alphaGen normalzfade 1.0 -0.8 0.5
//		tcmod scroll 0 -0.3
//	}
	{	// water reflection
		map sprites/smokeMap.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen normalzfade 0.7 -0.9 0.9
		//tcGen environment
		tcmod scroll 0 -0.2
		tcmod scale 5 1
	}
}

dripWet2
{
	allowCompress
	{	// water reflection
		map sprites/smokeMap.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaGen normalzfade 1.0 -0.8 0.5
		//tcGen environment
		tcmod scroll 0 -0.33
	}
//	{
//		map sprites/smokeMap.tga
//		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
//		alphaGen normalzfade 1.0 -0.7 0.5
//		tcmod scroll 0 -0.4
//	}
}


// Rafael - bats
bats1
{
	cull none
	entityMergable		// allow all the sprites to be merged together

	{
		map sprites/bats/bat1.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats2
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat2.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats3
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat3.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats4
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat4.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats5
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat5.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats6
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat6.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats7
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat7.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats8
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat8.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats9
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat9.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
bats10
{
	cull none
	entityMergable		// allow all the sprites to be merged together
	{
		map sprites/bats/bat10.tga
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}
//done

blood_dot1
{
	polygonOffset
	{
		map sprites/blood_dot1.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}
blood_dot2
{
	polygonOffset
	{
		map sprites/blood_dot2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}
blood_dot3
{
	polygonOffset
	{
		map sprites/blood_dot3.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}
blood_dot4
{
	polygonOffset
	{
		map sprites/blood_dot4.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}
blood_dot5
{
	polygonOffset
	{
		map sprites/blood_dot5.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

// Flamethrower Nozzle
nozzleFlame1
{
	nofog
	cull none
	{
		map sprites\nozzle\noz001.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}
nozzleFlame2
{
	nofog
	cull none
	{
		map sprites\nozzle\noz002.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}
nozzleFlame3
{
	nofog
	cull none
	{
		map sprites\nozzle\noz003.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}
nozzleFlame4
{
	nofog
	cull none
	{
		map sprites\nozzle\noz004.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}
nozzleFlame5
{
	nofog
	cull none
	{
		map sprites\nozzle\noz005.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}
nozzleFlame6
{
	nofog
	cull none
	{
		map sprites\nozzle\noz006.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}
nozzleFlame7
{
	nofog
	cull none
	{
		map sprites\nozzle\noz007.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}
nozzleFlame8
{
	nofog
	cull none
	{
		map sprites\nozzle\noz008.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR
//		blendfunc GL_ONE GL_ONE_MINUS_SRC_COLOR_MINUS_SRC_ALPHA
		rgbGen 	vertex
		alphaGen vertex
	}
}

sprites/percentdot
{
	nopicmip
	nomipmaps
	{
		map sprites/percentdot.tga
		blendfunc GL_ONE GL_ONE
	}
}

viewFlashBlood
{
	sort	nearest
	{
		//map *white
		map sprites/viewflash_red.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		//rgbGen identityLighting
		alphaGen vertex
	}
}

viewFadeBlack
{
	sort	nearest
	{
		map			*white
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_ALPHA
		rgbGen wave square 0 0 0 0				// just solid black
		alphaGen entity
	}	
}

bloodTrail
{
	cull disable
	{
		map models/weaphits/blood204.tga
		blendfunc blend
	}
}


viewFlashFire
{
	sort	nearest
	{
		//map *white
		animmap 20 sprites/inferno/inf0003.tga sprites/inferno/inf0004.tga sprites/inferno/inf0005.tga sprites/inferno/inf0006.tga sprites/inferno/inf0007.tga sprites/inferno/inf0008.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		//blendFunc GL_SRC_ALPHA GL_ONE
		//rgbGen identityLighting
		alphaGen vertex
	}
}

bloodCloud
{
	cull none
	entityMergable
	{
		map sprites/bloodCloud.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

// zombie dlight
flamedlightshader
{
	{
		map $dlight
		blendfunc GL_DST_COLOR GL_ONE
	}
	{
		map $dlight
		blendfunc GL_DST_COLOR GL_ONE
	}
	{
		map $dlight
		blendfunc GL_DST_COLOR GL_ONE
	}
}

viewTeslaDamageEffect
{
	nofog
	cull disable
	sort nearest
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
}

viewTeslaAltDamageEffect
{
	nofog
	cull disable
	sort nearest
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
	{
		map $whiteimage
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen entity
	}
}

sprites/aistate1
{
	{
		map sprites/relaxed.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/aistate2
{
	{
		map sprites/query.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/aistate3
{
	{
		map sprites/alerted.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

sprites/aistate4
{
	{
		map sprites/combat.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}


// ===========================
// Nerve Gun fire hitting grass/sand
// ===========================
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