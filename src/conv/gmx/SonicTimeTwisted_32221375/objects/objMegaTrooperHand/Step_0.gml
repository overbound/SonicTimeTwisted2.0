action_inherited();
script_execute(MegaTrooperHandStep,0,0,0,0,0);
if objMegaTrooper.state >= 7 exit;
if ydirection == 1 {
            
    yspeed+=.25;
    yoffset += yspeed;
            
}
else if ydirection == -1 {
    
if y > yorigin {
        yspeed-=.05;
        yoffset += yspeed;
        
    } else {
    
        if alarm[1] == -1 {
                y = yorigin;
                alarm[1]=60;
            }
    }
            
}
// check for collision
//ycollision +=cos(objScreen.image_index/16)*.25;
if y >= ycollision {
    if ydirection != 0 {
    
        alarm[0]=5;
        play_sfx(sndScreenShake, 0);
        ydirection = 0;
        yspeed = -2;
        
    }
    
    screen_shake();
    
}

