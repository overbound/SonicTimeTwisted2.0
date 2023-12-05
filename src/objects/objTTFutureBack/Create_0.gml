action_inherited();
/// Initialize background
var i;
// defaults
relative_y = .9;
absolute_y = 350;//room_height-(room_height*relative_y);
scale_limit = 3;
instance_create(x,y,objTTFutureRig);
// ocean
for (i=0; i<20; i+=1)
{
    strip[i] = parallax_create(1, backTTFWater, 0, i*8, 32, 8, 0, 0, .98+i*-.02, relative_y, 0, absolute_y+(i*8), 0, 0);
    strip[i].visible = false;
}
stars1= parallax_create(1, backTTFStars1, 0, 0, 320, 224, 0, 0, 1, relative_y, 0, 80, 0, 0);
stars2= parallax_create(1, backTTFStars2, 0, 0, 320, 224, 0, 0, 1, relative_y, 0, 80, 0, 0);
parallax_create(1, backTTFSky, 0, 0, 64, 48, -.25, 0, 1, relative_y, 0, 0, 0, 0);
parallax_create(1, backTTFSky, 0, 48, 64, 32, -.5, 0, 1, relative_y, 0, 48, 0, 0);
parallax_create(1, backTTFSky, 0, 80, 64, 272, 0, 0, 1, relative_y, 0, 80, 0, 0);
water = instance_create(0,2688,objWater);
with water { image_xscale = room_width/16; image_yscale = 84; remove = 0; can_run = true; }
//underwater_rig=parallax_create(1, backTTFTube, 0, 0, 224, 256, 0, 0, .95, relative_y, 146, 328, 512, 0);
// horizon
horizon = parallax_create_sprite(1, sprWaterHorizon, .25, 0, 0, 0, 0, 0, water.y, 0, 0);
horizon.depth = water.depth-1;

