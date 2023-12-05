draw_set_alpha(blackFade);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
draw_set_color(c_white);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha);
draw_set_alpha(1);
draw_sprite_ext(sprMetalEyesEnding,0,202,2873,1,1,0,c_white,eyeFade);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprMetalEyesAddEnding,0,202,2873,1,1,0,c_white,eyeFade);
draw_set_blend_mode(bm_normal);


