draw_self();
if sprite_index == sprMetalForward && objScreen.image_index mod 2 == 0 {
    draw_sprite_ext(sprMetaForwardShield,0,x,y,1,1,0,c_white,.25);
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprMetaForwardShieldAdd,0,x,y,1,1,0,c_white,.5);
    draw_set_blend_mode(bm_normal);
}

