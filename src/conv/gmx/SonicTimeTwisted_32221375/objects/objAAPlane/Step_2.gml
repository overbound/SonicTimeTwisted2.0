/// @description  Handle state

if (objProgram.inputManager.flag_player_input)
{
    set_input_enabled(false);
}
with objLevel.player[0] {
    switch other.state {
    
    case 0: //stand on plane
    objLevel.started = false;
    x = other.x+4;
    y = other.y-36;
    image_index = 0;
    // rumble while standing on place
    rumble(rumble_short_weakest);
    break;
    
    case 1:
    player_is_jumping_automatically();
    other.state = 2;
    started = false;
    objField.xx = x;
    break;
    }
    //switch sprite if tails
    if character_id == 2 or character_id == 3 {
        other.sprite_index = sprSonicPlane;
    }
}

if path_position > .78 && state == 0
    state = 1;
    


