/// @description  Initialize custom resources
image_speed = 0;
/* AUTHOR NOTE: created resources (fonts, particles, libraries, etc.) go here! */
// fonts
tr_load_files();


fontHud = font_add_sprite(sprFontHud, 32, 0,0);
fontHudMin = font_add_sprite(sprFontHudMin, 32, 0,0);
fontLives = font_add_sprite(sprFontLives, 32, 0, 0);
fontMicro = font_add_sprite(sprFontMicro, 32, 0, 0);
fontTitleLarge = font_add_sprite(sprFontTitleLarge, 48, 1, 0);
fontTitleSmall = font_add_sprite(sprFontTitleSmall, 65, 1, 0);
fontTitleSmallest = font_add_sprite(sprFontTitleSmallest, 48, 1, 0);

// These change 
timePostPastSprite = -1;
timePostFutureSprite = -1;

// Time Chant
chantAsset = -1;
chantInstance = -1;

// water splash
splash = part_type_create();
part_type_sprite(splash, sprSplash, 1, 1, 0);
part_type_life(splash, 32, 32);
// bubble pop
bubble_pop = part_type_create();
part_type_sprite(bubble_pop, sprBubblePop, 1, 1, 0);
part_type_life(bubble_pop, 10, 10);
// ring sparkle
sparkle = part_type_create();
part_type_sprite(sparkle, sprRingSparkle, 1, 1, 0);
part_type_life(sparkle, 24, 24);
// explosion type 1
explosion1 = part_type_create();
part_type_sprite(explosion1, sprExplosion1, 1, 1, 0);
part_type_life(explosion1, 21, 21);
// explosion type 2
explosion2 = part_type_create();
part_type_sprite(explosion2, sprExplosion2, 1, 1, 0);
part_type_blend(explosion2, true);
part_type_life(explosion2, 16, 16);
// brake dust
dust = part_type_create();
part_type_sprite(dust, sprDust, 1, 1, 0);
part_type_life(dust, 16, 16);
// lightning spark
lspark = part_type_create();
part_type_sprite(lspark, sprLightningSpark, 1, 0, 0);
part_type_life(lspark, 21, 21);
// small flame
flame = part_type_create();
part_type_sprite(flame, sprSmallFlame, 1, 1, 0);
part_type_life(flame, 16, 16);
// flame shield debris
flame_dust = part_type_create();
part_type_sprite(flame_dust, sprFlameDust, 1, 1, 0);
part_type_life(flame_dust, 16, 16);
// Frigid Fortress snow particle
ff_snow = part_type_create();
part_type_sprite(ff_snow, sprFFSnowParticle, false, false, true);
part_type_life(ff_snow, 240, 240);
part_type_orientation(ff_snow, 270, 270, 0.5, 0, false);
part_type_gravity(ff_snow, 0.1, 270);
part_type_alpha2(ff_snow, 1, 0);
// drop dash dust
dropdash_dust = part_type_create();
part_type_sprite(dropdash_dust, sprDropDashDust, true, true, false);
part_type_life(dropdash_dust, 20, 20);

// Lifetime and default values
lifetime = 240
original_lifetime = 240
image_index = irandom(3) - 1
xspeed = 0
yspeed = 0
image_speed = 0
remove=2

// sonic animation table
anim_sonic = ds_map_create();
ds_map_add(anim_sonic, "idle", animSonicIdle);
ds_map_add(anim_sonic, "walk", animSonicWalk);
ds_map_add(anim_sonic, "run", animSonicRun);
ds_map_add(anim_sonic, "sprint", animSonicSprint);
ds_map_add(anim_sonic, "cliff", animSonicCliff);
ds_map_add(anim_sonic, "cliff_b", animSonicCliffB);
ds_map_add(anim_sonic, "push", animSonicPush);
ds_map_add(anim_sonic, "brake", animSonicBrake);
ds_map_add(anim_sonic, "look", animSonicLook);
ds_map_add(anim_sonic, "crouch", animSonicCrouch);
ds_map_add(anim_sonic, "spin", animSonicSpin);
ds_map_add(anim_sonic, "spindash", animSonicSpindash);
ds_map_add(anim_sonic, "peelout", animSonicPeelout);
ds_map_add(anim_sonic, "peelout_end", animSonicPeeloutEnd);
ds_map_add(anim_sonic, "rise", animSonicRise);
ds_map_add(anim_sonic, "flip", animSonicFlip);
ds_map_add(anim_sonic, "get_air", animSonicGetAir);
ds_map_add(anim_sonic, "transform", animSonicTransform);
ds_map_add(anim_sonic, "wrap_post", animSonicWrapPost);
ds_map_add(anim_sonic, "warp", animSonicWarp);
ds_map_add(anim_sonic, "hurt", animSonicHurt);
ds_map_add(anim_sonic, "dead", animSonicDead);
ds_map_add(anim_sonic, "drown", animSonicDrown);
ds_map_add(anim_sonic, "3DTurn", animSonic3DTurn);
ds_map_add(anim_sonic, "stand_rotate", animSonicStandRotate);
ds_map_add(anim_sonic, "level_end", animSonicLevelEnd);
ds_map_add(anim_sonic, "boarding", animSonicBoarding);
ds_map_add(anim_sonic, "level_start", animSonicLevelStart);
ds_map_add(anim_sonic, "swing", animSonicSwing);
ds_map_add(anim_sonic, "wallrun", animSonicWallRun);
ds_map_add(anim_sonic, "float", animSonicFloat);
ds_map_add(anim_sonic, "drop_dash", animSonicDropDash);
// tails animation table
anim_tails = ds_map_create();
ds_map_add(anim_tails, "idle", animTailsIdle);
ds_map_add(anim_tails, "walk", animTailsWalk);
ds_map_add(anim_tails, "run", animTailsRun);
ds_map_add(anim_tails, "sprint", animTailsSprint);
ds_map_add(anim_tails, "cliff", animTailsCliff);
ds_map_add(anim_tails, "push", animTailsPush);
ds_map_add(anim_tails, "brake", animTailsBrake);
ds_map_add(anim_tails, "look", animTailsLook);
ds_map_add(anim_tails, "crouch", animTailsCrouch);
ds_map_add(anim_tails, "spin", animTailsSpin);
ds_map_add(anim_tails, "spindash", animTailsSpindash);
ds_map_add(anim_tails, "rise", animTailsRise);
ds_map_add(anim_tails, "flip", animTailsFlip);
ds_map_add(anim_tails, "get_air", animTailsGetAir);
ds_map_add(anim_tails, "wrap_post", animTailsWarpPost);
ds_map_add(anim_tails, "warp", animTailsWarp);
ds_map_add(anim_tails, "hurt", animTailsHurt);
ds_map_add(anim_tails, "dead", animTailsDead);
ds_map_add(anim_tails, "flight", animTailsFlight);
ds_map_add(anim_tails, "flight_end", animTailsFlightEnd);
ds_map_add(anim_tails, "swim", animTailsSwim);
ds_map_add(anim_tails, "swim_end", animTailsSwimEnd);
ds_map_add(anim_tails, "3DTurn", animTails3DTurn);
ds_map_add(anim_tails, "stand_rotate", animTailsStandRotate);
ds_map_add(anim_tails, "level_end", animTailsLevelEnd);
ds_map_add(anim_tails, "level_start", animTailsLevelStart);
ds_map_add(anim_tails, "boarding", animTailsBoarding);
ds_map_add(anim_tails, "swing", animTailsSwing);
ds_map_add(anim_tails, "wallrun", animTailsWallRun);
ds_map_add(anim_tails, "float", animTailsFloat);
// knuckles animation table
anim_knuckles = ds_map_create();
ds_map_add(anim_knuckles, "idle", animKnucklesIdle);
ds_map_add(anim_knuckles, "walk", animKnucklesWalk);
ds_map_add(anim_knuckles, "run", animKnucklesRun);
ds_map_add(anim_knuckles, "cliff", animKnucklesCliff);
ds_map_add(anim_knuckles, "cliff_b", animKnucklesCliffB);
ds_map_add(anim_knuckles, "push", animKnucklesPush);
ds_map_add(anim_knuckles, "brake", animKnucklesBrake);
ds_map_add(anim_knuckles, "look", animKnucklesLook);
ds_map_add(anim_knuckles, "crouch", animKnucklesCrouch);
ds_map_add(anim_knuckles, "spin", animKnucklesSpin);
ds_map_add(anim_knuckles, "spindash", animKnucklesSpindash);
ds_map_add(anim_knuckles, "rise", animKnucklesRise);
ds_map_add(anim_knuckles, "flip", animKnucklesFlip);
ds_map_add(anim_knuckles, "get_air", animKnucklesGetAir);
ds_map_add(anim_knuckles, "wrap_post", animKnucklesWarpPost);
ds_map_add(anim_knuckles, "warp", animKnucklesWarp);
ds_map_add(anim_knuckles, "hurt", animKnucklesHurt);
ds_map_add(anim_knuckles, "dead", animKnucklesDead);
ds_map_add(anim_knuckles, "drown", animKnucklesDrown);
ds_map_add(anim_knuckles, "glide", animKnucklesGlide);
ds_map_add(anim_knuckles, "glide_end", animKnucklesGlideEnd);
ds_map_add(anim_knuckles, "glide_slide", animKnucklesGlideSlide);
ds_map_add(anim_knuckles, "glide_stand_1", animKnucklesGlideStand1);
ds_map_add(anim_knuckles, "glide_stand_2", animKnucklesGlideStand2);
ds_map_add(anim_knuckles, "climb", animKnucklesClimb);
ds_map_add(anim_knuckles, "climb_end", animKnucklesClimbEnd);
ds_map_add(anim_knuckles, "3DTurn", animKnuckles3DTurn);
ds_map_add(anim_knuckles, "stand_rotate", animKnucklesStandRotate);
ds_map_add(anim_knuckles, "level_end", animKnucklesLevelEnd);
ds_map_add(anim_knuckles, "level_start", animKnucklesLevelStart);
ds_map_add(anim_knuckles, "boarding", animKnucklesBoarding);
ds_map_add(anim_knuckles, "swing", animKnucklesSwing);
ds_map_add(anim_knuckles, "wallrun", animKnucklesWallRun);
ds_map_add(anim_knuckles, "float", animKnucklesFloat);
// super sonic animation table
anim_sonic_super = ds_map_create();
ds_map_add(anim_sonic_super, "idle", animSuperSonicIdle);
ds_map_add(anim_sonic_super, "walk", animSuperSonicWalk);
ds_map_add(anim_sonic_super, "run", animSuperSonicRun);
ds_map_add(anim_sonic_super, "sprint", animSuperSonicRun);
ds_map_add(anim_sonic_super, "cliff", animSuperSonicCliff);
ds_map_add(anim_sonic_super, "cliff_b", animSuperSonicCliff);
ds_map_add(anim_sonic_super, "push", animSuperSonicPush);
ds_map_add(anim_sonic_super, "brake", animSuperSonicBrake);
ds_map_add(anim_sonic_super, "look", animSuperSonicLook);
ds_map_add(anim_sonic_super, "crouch", animSuperSonicCrouch);
ds_map_add(anim_sonic_super, "spin", animSuperSonicSpin);
ds_map_add(anim_sonic_super, "spindash", animSuperSonicSpindash);
ds_map_add(anim_sonic_super, "peelout", animSuperSonicPeelout);
ds_map_add(anim_sonic_super, "peelout_end", animSuperSonicPeeloutEnd);
ds_map_add(anim_sonic_super, "rise", animSuperSonicRise);
ds_map_add(anim_sonic_super, "flip", animSonicFlip);
ds_map_add(anim_sonic_super, "get_air", animSuperSonicGetAir);
ds_map_add(anim_sonic_super, "wrap_post", animSuperSonicWrapPost);
ds_map_add(anim_sonic_super, "warp", animSuperSonicWarp);
ds_map_add(anim_sonic_super, "hurt", animSuperSonicHurt);
ds_map_add(anim_sonic_super, "dead", animSuperSonicDead);
ds_map_add(anim_sonic_super, "drown", animSuperSonicDrown);
ds_map_add(anim_sonic_super, "3DTurn", animSuperSonic3DTurn);
ds_map_add(anim_sonic_super, "boarding", animSuperSonicBoarding);
ds_map_add(anim_sonic_super, "swing", animSuperSonicSwing);
ds_map_add(anim_sonic_super, "wallrun", animSuperSonicWallRun);
ds_map_add(anim_sonic_super, "float", animSuperSonicFloat);
ds_map_add(anim_sonic_super, "stand_rotate", animeSuperSonicStandRotate);
ds_map_add(anim_sonic_super, "drop_dash", animSuperSonicDropDash);

/* */
/*  */
