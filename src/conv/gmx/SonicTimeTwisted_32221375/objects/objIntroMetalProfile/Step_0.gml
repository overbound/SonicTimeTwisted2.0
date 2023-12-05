if __view_get( e__VW.XView, view_current ) >1300 && __view_get( e__VW.Object, view_current )!=noone {
    
    __view_set( e__VW.Object, view_current, noone );
    alarm[0]=30;
   
    }
if !audio_is_playing(sndMetalWooshLoop) && !audio_is_playing(sndMetalWoosh) && __view_get( e__VW.Object, view_current ) != noone
play_sfx(sndMetalWooshLoop,1);

