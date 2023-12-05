/// @description  Get transition mode
switch mode
{
case 1: // fade out
    if (screenOffset>=-64) {if next_room>-1 room_goto(next_room); mode = -1; break;}
    screenOffset +=4;
    break;
case -1: // fade in
    if screenOffset>=532 {
    // setup titlecard
        with instance_create(0, 0, objTitlecard)
        {
            var rm = TT2_f;
            if (objProgram.in_past) rm = TT2_p;
            get_titlecard_array(rm, id);
            event_perform(ev_other, ev_room_start);
            mode = 1;
        }
        instance_destroy(); break;
    
    }
    screenOffset +=4;
    break;
}

if !audio_is_playing(sndQuake) {
    play_sfx(sndQuake,10);
}
with objCamera {
    top=0;
    bottom=room_height;
    left=0;
    right=room_width;
    shake = true;
}

