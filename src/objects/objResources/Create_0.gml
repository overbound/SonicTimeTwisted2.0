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
anim_sonic = build_sonic_animations();
// tails animation table
anim_tails = build_tails_animations();
// knuckles animation table
anim_knuckles = build_knuckles_animations();
// super sonic animation table
anim_sonic_super = build_super_sonic_animations();

/* */
/*  */
