if blast == true {
    gpu_set_blendmode(bm_normal);
    draw_sprite_ext(sprBlastBolt,floor(blastImageIndex),x,blasty,1,1,0,c_white,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprBlastBolt,floor(blastImageIndex),x,blasty,1,1,0,c_white,image_alpha);
    gpu_set_blendmode(bm_normal);
    
    
    
} else draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);


