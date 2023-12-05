if !instance_exists(objLevel.player[0]) exit;
if objLevel.player[0].x > x-128 && objLevel.player[0].x < x+128 {
    start=true;
}
if start == true && visible == true && right < 128 {
        
            right+=2;
            left-=1;
            x-=1;
        
        }
    
if start == true {
    if !audio_is_playing(sndSSUFOMagnet) && objLevel.started{
    
        play_sfx(sndSSUFOMagnet,3);
        }
}
if image_blend == c_white {
    image_blend = c_blue;
    
    } else image_blend = c_white;

