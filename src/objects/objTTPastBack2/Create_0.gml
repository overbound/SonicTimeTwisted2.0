action_inherited();
/// Initialize background
var i;
// defaults
relative_y = .9;
absolute_y = 200;//room_height-(room_height*relative_y);
scale_limit = 3;
with instance_create(x,y,objTTPastShip) {
    absolute_y = 140; //100
}
stars1= parallax_create(1, backTTFStars1, 0, 0, 320, 224, 0, 0, 1, relative_y, 0, -48, 0, 0);
stars2= parallax_create(1, backTTFStars2, 0, 0, 320, 224, 0, 0, 1, relative_y, 0, -48, 0, 0);
parallax_create(1, backTTPSky, 0, 0, 32, 220, 0, 0, 1, relative_y, 0, -20, 0, 0);
// ocean
for (i=0; i<20; i+=1)
{
    strip[i] = parallax_create(1, backTTPWater, 0, 0, 32, 16, 0, 0, .98+i*-.02, relative_y, 0, absolute_y+(i*16), 0, 0);
    strip[i].visible = false;
}
 
water = instance_create(0,1036,objWater);
with water { image_xscale = room_width/16; image_yscale = 128; scale = 128; remove = 0; can_run = true; }
seaback=parallax_create(1, backTPFSea, 0, 0, 426, 640, 0, 0, 1, relative_y, 0, 200, 0, 0);
// Small Ships
with instance_create(x,y,objTTPastShipMedium) {
// offsets
relative_x = 1;
relative_y = other.relative_y;
absolute_x = 512;
absolute_y = 150;
separation_x = 196;
separation_y = 0;
hspeed=-0.18;
depth = 20;
}
with instance_create(x,y,objTTPastShipMedium) {
// offsets
relative_x = 1;
relative_y = other.relative_y;
absolute_x = 512;
absolute_y = 156;
separation_x = 256;
separation_y = 0;
hspeed=-0.12;
depth=19;
}
with instance_create(x,y,objTTPastShipSmall) {
// offsets
relative_x = 1;
relative_y = other.relative_y;
absolute_x = 0;
absolute_y = 168;
separation_x = 112;
separation_y = 0;
hspeed=-0.09;
depth = 22;
}
with instance_create(x,y,objTTPastShipSmall) {
// offsets
relative_x = 1;
relative_y = other.relative_y;
absolute_x = 0;
absolute_y = 174;
separation_x = 72;
separation_y = 0;
hspeed=-0.07;
depth = 21;
}
// horizon
horizon = parallax_create_sprite(1, sprWaterHorizon, .25, 0, 0, 0, 0, 0, water.y, 0, 0);
horizon.depth = water.depth-1;


