draw_set_alpha(blackFade);
draw_set_color(c_black);
draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+objScreen.width,camera_get_view_y(view_camera[0])+objScreen.height,false);
draw_set_color(c_white);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha);
draw_set_alpha(1);
draw_sprite_ext(sprMetalEyesEnding,0,202,2873,1,1,0,c_white,eyeFade);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprMetalEyesAddEnding,0,202,2873,1,1,0,c_white,eyeFade);
gpu_set_blendmode(bm_normal);


