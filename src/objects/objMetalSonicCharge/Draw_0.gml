draw_self();
if shieldVisible == true {
    draw_sprite_ext(sprMetaForwardShield,0,x,y,1,1,0,c_white,.25);
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprMetaForwardShieldAdd,0,x,y,1,1,0,c_white,.5);
    gpu_set_blendmode(bm_normal);
}
draw_set_alpha(explosionAlpha)
    draw_circle(x,y,flashOffset,false);
draw_set_alpha(1);


