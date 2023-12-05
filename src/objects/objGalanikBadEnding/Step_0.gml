switch state {
case 0:
    offset -=16;
    introFade +=.025;
    if offset <= 0 {
        offset = 0;
        state = 1;
        play_sfx(sndGalanikLaugh,1);
    }
break;
case 1:
     //introFade -=.05;
     if introFade < 0 {
        state = 2;
     }
break;
}
if flash flash = false; else flash = true;

