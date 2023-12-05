action_inherited();
/// Initialize background
var i;
// defaults
relative_y = .9;
absolute_y = 350;//room_height-(room_height*relative_y);
scale_limit = 3;
instance_create(x,y,objTTFutureRig2);
// ocean
/*for (i=0; i<20; i+=1)
{
    strip[i] = parallax_create(1, backTTFWater, 0, i*8, 32, 8, 0, 0, .98+i*-.02, relative_y, 0, 1100-160+(i*8), 0, 0);
    strip[i].visible = false;
}*/

parallax_create(1, backTTFWater, 0, 0, 32, 8, 0, 0, 1, 0, 0, 1100-160, 0, 0);
parallax_create(1, backTTFWater, 0, 8, 32, 8, 0, 0, 1, 0, 0, 1100-160+8, 0, 0);
parallax_create(1, backTTFWater, 0, 16, 32, 16, 0, 0, 1, 0, 0, 1100-160+16, 0, 0);
parallax_create(1, backTTFWater, 0, 32, 32, 16, 0, 0, 1, 0, 0, 1100-160+32, 0, 0);
parallax_create(1, backTTFWater, 0, 48, 32, 16, 0, 0, 1, 0, 0, 1100-160+48, 0, 0);
parallax_create(1, backTTFWater, 0, 64, 32, 16, 0, 0, 1, 0, 0, 1100-160+64, 0, 0);
parallax_create(1, backTTFWater, 0, 80, 32, 16, 0, 0, 1, 0, 0, 1100-160+80, 0, 0);
parallax_create(1, backTTFWater, 0, 96, 32, 16, 0, 0, 1, 0, 0, 1100-160+96, 0, 0);
parallax_create(1, backTTFWater, 0, 112, 32, 16, 0, 0, 1, 0, 0, 1100-160+112, 0, 0);
parallax_create(1, backTTFWater, 0, 128, 32, 16, 0, 0, 1, 0, 0, 1100-160+128, 0, 0);
parallax_create(1, backTTFWater, 0, 144, 32, 16, 0, 0, 1, 0, 0, 1100-160+144, 0, 0);
stars1= parallax_create(1, backTTFStars1, 0, 0, 320, 224, 0, 0, 1, relative_y, 0, -128, 0, 0);
stars2= parallax_create(1, backTTFStars2, 0, 0, 320, 224, 0, 0, 1, relative_y, 0, -128, 0, 0);
parallax_create(1, backTTFSky, 0, 0, 64, 48, -.25, 0, 1, relative_y, 0, 0, 0, 0);
parallax_create(1, backTTFSky, 0, 48, 64, 32, -.5, 0, 1, relative_y, 0, 48, 0, 0);
parallax_create(1, backTTFSky, 0, 80, 64, 272, 0, 0, 1, relative_y, 0, 80, 0, 0);
parallax_create(1, backTTFMountain, 0, 0, 368, 96, 0, 0, .95, relative_y, 0, 350, 0, 0);
parallax_create(1, backTTFRocks, 0, 0, 64, 16, 0, 0, .95, relative_y, 0, 446, 0, 0);
parallax_create(1, backTTFRocks, 0, 16, 64, 16, 0, 0, .95, relative_y, 0, 462, 0, 0);
parallax_create(1, backTTFRocks, 0, 32, 64, 16, 0, 0, .95, relative_y, 0, 478, 0, 0);
parallax_create(1, backTTFRocks, 0, 48, 64, 32, 0, 0, .95, relative_y, 0, 494, 0, 0);
parallax_create(1, backTTFRocks, 0, 48, 64, 32, 0, 0, .95, relative_y, 0, 526, 0, 0);
water = instance_create(0,1100,objWater);
with water { image_xscale = room_width/16; image_yscale = 200; remove = 0; can_run = false; }
//underwater_rig=parallax_create(1, backTTFTube, 0, 0, 224, 512, 0, 0, .95, relative_y, 146, 512, 512, 0);
// horizon
horizon = parallax_create_sprite(1, sprWaterHorizon, .25, 0, 0, 0, 0, 0, water.y, 0, 0);
horizon.depth = water.depth-1;

/* */
/*  */
