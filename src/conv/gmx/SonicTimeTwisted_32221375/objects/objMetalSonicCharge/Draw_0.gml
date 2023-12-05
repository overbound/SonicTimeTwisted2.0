draw_self();
if shieldVisible == true {
    draw_sprite_ext(sprMetaForwardShield,0,x,y,1,1,0,c_white,.25);
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprMetaForwardShieldAdd,0,x,y,1,1,0,c_white,.5);
    draw_set_blend_mode(bm_normal);
}
draw_set_alpha(explosionAlpha)
    draw_circle(x,y,flashOffset,false);
draw_set_alpha(1);


