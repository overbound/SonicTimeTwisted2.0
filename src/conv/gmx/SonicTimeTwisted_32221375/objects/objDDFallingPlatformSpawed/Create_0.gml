action_inherited();
reaction_script = player_reaction_collapsing_platform;
through = true;
ox = 2;
oy = 5;
image_speed = 0;
///Sprite and Sprite parts
if objProgram.in_past == true {
        sprite_parts = sprDDBreakPiecesPast;
        image_index = 1;
    }
    else {
        sprite_parts = sprDDBreakPiecesFuture;
        image_index = 0;
    }
    
    
    

remove = 0;
