/// @description  Control player
// custom player state
with player_id
{
    // rotate around post
    x = other.x+sine[angle_wrap(timeline_position*30)]*10*facing;
    if timeline_position>3 and timeline_position<10 depth = other.depth+1; else
    depth = 0;
    // activate on end of animation
    if timeline_position>=12
    {
        // reset time post
        other.alarm[0] = 40;
        other.player_id = noone;
        // confirm time travel
        objProgram.spawn_tag = other.tag;
        objProgram.spawn_time = objLevel.timer;
        objProgram.time_traveling = facing;
        // camera
        camera.alarm[0] = 128;
        // audio
        var _chant = sndChantPast;
        if (objProgram.in_past) {
            _chant = sndChantFuture;
        }
        
        var _locChantStream = tr_stream_loc_sound(_chant);
        if (_locChantStream) {
            show_debug_message("Using localized chant!");
            with (objResources) {
                chantAsset = _locChantStream;
                chantInstance = play_sfx(_locChantStream, 1);
            }
        }
        else {
            show_debug_message("Using prebaked chant!");
            play_sfx(_chant, 1);
        }
        
        // time travel
        player_is_exiting();
        exit;
    }
    // cancelling
    if (input_axis_x() == -facing)
    {
        // reset time post
        other.alarm[0] = 24;
        other.player_id = noone;
        // animate
        animation_new = "brake";
        timeline_speed = 1;
        // movement and collision
        x = other.x;
        xspeed = 8*facing;
        // camera
        camera.alarm[0] = -1;
        // other
        depth = 0;
        // running
        player_is_running();
        exit;
    }
    // jumping
    if input_check_pressed(cACTION)
    { 
        // reset time post
        other.alarm[0] = 24;
        other.player_id = noone;
        // movement and collision
        x = other.x;
        xspeed = 8*facing;
        // camera
        camera.alarm[0] = -1;
        // other
        depth = 0;
        // running
        player_is_jumping();
        exit;
    }
}

