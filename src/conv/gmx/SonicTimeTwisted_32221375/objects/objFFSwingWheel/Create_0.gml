action_inherited();
remove = 0;
angle = 0;
/// Create platforms
// platform 1
platform[0] = instance_create(xstart, ystart, objSolid);
platform[0].sprite_index = sprFFBlock;
platform[0].visible = true;
platform[0].through = true;
platform[0].remove = 0;
// platform 2
platform[1] = instance_create(xstart, ystart, objSolid);
platform[1].sprite_index = sprFFBlock;
platform[1].visible = true;
platform[1].through = true;
platform[1].remove = 0;
// spike ball
platform[2] = instance_create(xstart, ystart, objFFSpikeball);
platform[2].depth = 1;
platform[2].remove = 0;

