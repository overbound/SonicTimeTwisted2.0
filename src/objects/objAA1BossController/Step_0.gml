with (objAA1BossController) {
/// State machine
switch state
{
case 0: // lock in place
    if objLevel.player[0].state==player_state_dead
    {
        with objAA1BossLaser if (state!=-1) pattern = -1; //else if (state!=-1) {speed = firing_speed; state = -1;}}
        with boss {firing = false; alarm[1] = 30;}
        timeline_running = false;
        state = -1;
    }
    break;
case 1: // move player camera over
    with objCamera
    {
        if left<896
        {
            left = min(left+6, 896);
            right = 1728;
			camera_set_view_pos(view_camera[view_id], left, camera_get_view_y(view_camera[view_id]));
        }
        else
        {
            left = 576;
            top = 476;
            right = room_width;
            bottom = 744;
            stop_all_music(false);
            with other instance_destroy();
            exit;
        }
        if top<504
        {
            top = min(top+3, 504);
            bottom = min(bottom+3, 744);
			camera_set_view_pos(view_camera[view_id], camera_get_view_x(view_camera[view_id]), top);
        }
    }
    
    with objLevel.player[0] {
    
        if !in_view(view_current,0) {
        //if state != player_state_fall
           // player_is_falling();
            if y<=camera_get_view_y(view_camera[0])+objScreen.height*0.5 {
                y+=16;
            }
            if x<=camera_get_view_x(view_camera[0])+objScreen.width*0.5 {
                x+=8;
            }
        }
    }
    break;
}

}
