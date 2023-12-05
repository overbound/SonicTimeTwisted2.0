if in_view(view_current,0) && blackFade == 0{
    // flash
    if alarm[0] == -1 {
        if image_alpha && image_index == 1 {
            alarm[0] = 220;
        }
        
        if image_alpha {
            image_alpha = 0;
            play_sfx(sndMetalShock,1);
        } else {
            image_alpha = 1;
            image_index += 1;
        }
    }
} else if blackFade > 0 {
    image_alpha = 0;
    alarm[0] = -1;
} else {
    alarm[0] = 80;
}

