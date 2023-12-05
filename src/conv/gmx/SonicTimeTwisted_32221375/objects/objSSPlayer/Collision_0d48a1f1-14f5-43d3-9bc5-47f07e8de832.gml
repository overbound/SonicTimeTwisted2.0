/// @description  Level End
if z >= 24 {
    started=false;
    closing=true;
    move_speed=0;
    objSSLevel.cleared = true;
    objSSLevel.timer_enabled = false;
    
    // win an emerald/stone
    if progress > objSSMetalSonic.progress {
    
        with objSSMessages { closing=2; }
        with instance_create(x,y,objSSEmerald) depth = -1;
        
        if objProgram.in_past {
        
            objProgram.special_past_current_level+=1;
        
        } else objProgram.special_future_current_level+=1;
        
        if image_speed > 0 {
        // turn animation
        if objGameData.character_id[0] == 1 {
            sprite_index=sprSonicSSEnd;
        } else if objGameData.character_id[0] == 2  {
            sprite_index=sprTailsSSEnd;
        } else sprite_index=sprKnucklesSSEnd;
         image_speed = .25;  
         }  
        save_emeralds();
        save_big_ring();
        stt_save_files();
        
    } else {
        with objSSMessages { closing=1; }
        if objGameData.character_id[0] == 1 {
            sprite_index=sprSonicSSStand;
        } else if objGameData.character_id[0] == 2  {
            sprite_index=sprTailsSSStand;
        } else sprite_index=sprKnucklesSSStand;
         image_speed = 0;  
         objSSPlayer.kill = 4;
        }  
        
    
    with other instance_destroy();

}

