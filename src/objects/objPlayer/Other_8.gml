/// @description  Execute end of path

// get absolute speed for conversion
if ds_exists(xtable, ds_type_list) && ds_exists(ytable, ds_type_list) {
    var path_xspeed = 0;
    var path_yspeed = 0;
    
    var offset = ds_list_size(xtable)-1;
    if (offset >= 1)
    {
        path_xspeed = ds_list_find_value(xtable, offset)-ds_list_find_value(xtable, offset-1);
    }
    
    offset = ds_list_size(ytable)-1;
    if (offset >= 1)
    {
        path_yspeed = ds_list_find_value(ytable, offset)-ds_list_find_value(ytable, offset-1);
    }

    // rumble if leaving tube
    if(state == player_state_path)
    {
        rumble(rumble_short_mid);
    }
    
    // states and flags
    state = player_state_fall;
    
    // movement and collision
    xspeed = (cosine[angle]*path_xspeed)-(sine[angle]*path_yspeed);
    yspeed = -(sine[angle]*path_xspeed)+(cosine[angle]*path_yspeed);
    
    // set air state
    player_in_air();
    
    // turn towards movement
    if path_xspeed!=0 facing = sign(path_xspeed);
}

