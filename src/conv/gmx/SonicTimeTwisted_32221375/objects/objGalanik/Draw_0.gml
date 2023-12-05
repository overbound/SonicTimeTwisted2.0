/// @description  draw self
/*
if flash {
draw_set_color(c_white);
	draw_boss_hit_blend(11);
    draw_self();
	draw_boss_hit_blend(11);
} else {*/
    draw_self();
    
    if eyeTell == true && state < 6 {
        draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x-24,y-20,1,1,0,c_white,.65);
        draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x+24,y-20,1,1,0,c_white,.65);
    }
    if eye_index != -1
        draw_sprite_ext(sprGalanikDizzyEyes,floor(eye_index),x,y, image_xscale,image_yscale,0,c_white,1);


/* */
/*  */
