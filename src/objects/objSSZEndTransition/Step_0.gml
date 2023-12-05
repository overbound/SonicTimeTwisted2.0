switch state {
    case 1:
        with objSSBack.littlePlanet {
        
            image_xscale+=.025;
            image_yscale+=.025;
        
        }
        
        for(var i = 0; i < 4; i++) {
                with objSSBack.cloud[i] {
                    image_xscale=objSSBack.littlePlanet.image_xscale;
                    image_yscale=image_xscale;
                }
        }
        
        if objSSBack.littlePlanet.image_xscale > 2 {
        }
        
        
        
        if explodeOffset > 1200 {
        
            state = 2;
            if next_room>-1 room_goto(next_room); 
        
        } else {
            if image_alpha == 0 {
                play_sfx(sndSSEndExplosion,12);
            }
            image_alpha +=.025;
            explodeOffset+=8;
        }
        break;
        
    case 2:
    
        image_alpha -= .125;
        
        if image_alpha <= 0 {
                // setup titlecard
            with instance_create(0, 0, objTitlecard)
            {
                get_titlecard_array(PP1, id);
                event_perform(ev_other, ev_room_start);
                mode = 1;
            }
            instance_destroy();
            
        }
    
    break;
}

