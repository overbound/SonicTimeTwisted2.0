draw_set_color(c_white);
draw_boss_hit_blend();
draw_self();
draw_boss_hit_blend();
if objFinalBoss.eyeTell == true {
    draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x-10,y+20,1,1,0,c_white,.65);
    draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x+10,y+20,1,1,0,c_white,.65);
}


