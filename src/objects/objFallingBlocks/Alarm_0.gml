var number=sprite_width/32;
    
    for(i=0; i < number; i++){
    
        instance_create(x+(i*32),y,objSingleFallBlock);
        
    
    }
    play_sfx(sndBreak,2);
    instance_destroy();

