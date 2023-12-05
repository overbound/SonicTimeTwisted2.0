action_inherited();
/// Initialize
image_speed = .5;
sprite_index = sprBackTTPShipSmall;
remove=0;
    
// general
tiled = 1;
// background elements
back = -1;
left = 0;
top = 0;
width = 0;
height = 0;
image_speed = .5;
// offsets
relative_x =.95;
relative_y = .9;
absolute_x = 128;
absolute_y = 196;
separation_x = 1024;
separation_y = 0;
hspeed=-.25;

sprite_h = sprite_height;
depth =20;
yy=y+floor(__view_get( e__VW.YView, view_current )*relative_y)+absolute_y;
xx=x+floor(__view_get( e__VW.XView, view_current )*relative_x)+absolute_x;

//old setup code
//rig= parallax_create_sprite(1,sprBackTTFRig,.5,0,0,.8,relative_y,128,280,768,0); 

