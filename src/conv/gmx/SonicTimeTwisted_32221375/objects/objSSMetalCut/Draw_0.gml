if blast == true {
    draw_set_blend_mode(bm_normal);
    draw_sprite_ext(sprBlastBolt,floor(blastImageIndex),x,blasty,1,1,0,c_white,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprBlastBolt,floor(blastImageIndex),x,blasty,1,1,0,c_white,image_alpha);
    draw_set_blend_mode(bm_normal);
    
    
    
} else draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);


