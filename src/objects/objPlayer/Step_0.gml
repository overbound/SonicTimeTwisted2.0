/// @description  Handle current state
switch state
{
case player_state_enter: // entering from time travel
    player_state_enter();
    break;

case player_state_exit: // exiting from time travel
    player_state_exit();
    break;

case player_state_dead: // process dead state
    player_state_dead();
    break;

default: // normal activity
    // handle timeout
    /*if objGameData.timeout and objLevel.timer_enabled and not (objLevel.cleared or objLevel.timer)
    {
        objProgram.spawn_time = 36000;
        play_sfx(sndHurt, 0);
        player_is_dead();
    }*/

    // update position table
    ds_list_add(xtable, x);
    ds_list_add(ytable, y);
    if ds_list_size(xtable)>table_size ds_list_delete(xtable, 0);
    if ds_list_size(ytable)>table_size ds_list_delete(ytable, 0);

    // execute state
    if state and not state_reset script_execute(state);
    if state_reset state_reset = false;

    // set camera to current position
    camera.x = floor(x);
    camera.y = floor(y);

    // reset vertical panning
    if (state!=player_state_look) and (state!=player_state_crouch) camera.offset_y -= 2*sign(camera.offset_y);

    // update listener
    if (player_id==0) audio_listener_position(camera.x, camera.y, 0);
}

/* */
/*  */
