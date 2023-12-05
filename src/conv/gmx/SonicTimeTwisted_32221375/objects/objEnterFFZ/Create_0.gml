action_inherited();
image_alpha = 0;
mode = 0;
playerFacing=objLevel.player[0].facing;
fadeSpeed=0.0085;
alarm[0]=125;
snowSystem =part_system_create();
snowColor=make_color_rgb(81,161,243);
snow = part_type_create(); 
part_type_sprite(snow,sprSnow,false,false,false)
//part_type_shape(snow, pt_shape_snow);
part_type_size(snow, 1, 1, 0, 0);
part_type_scale(snow, 1, 1);
part_type_colour1(snow, c_white);
part_type_alpha2(snow, 1, 0);
part_type_speed(snow, 2, 4, 0, 0);
part_type_direction(snow, 270, 270, 0, 0);
part_type_gravity(snow, 0.20, 240);
part_type_orientation(snow, 0, 0, 0, 0, 1);
part_type_blend(snow, 1);
part_type_life(snow, 90, 90);

if objProgram.in_past 
    next_room = FF1_p;
    else next_room = FF1_f;

