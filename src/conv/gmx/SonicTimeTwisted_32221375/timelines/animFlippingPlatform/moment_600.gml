image_index = 1;
depth_mask=4;
with objLevel.player[0] {
        
        if (terrain_id == other.id && landed) {
            
            player_is_falling();
        
        }
}
if in_view(0,128) {
    
    play_sfx(sndAADropBumperReset, 2);
    
    }

