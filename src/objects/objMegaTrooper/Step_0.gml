action_inherited();
/// change states
switch state {
case 0: // rise
    if y > ystart -192 {
    
        y-=2;
    
    } else { 
    state = 1; 
    started = true; 
    with handLeft reaction_script=player_reaction_harmful;
    with handRight reaction_script=player_reaction_harmful;
    
    }
break;
case 1: // Smash Left
x-=2;
if x < xstart -720 {
    state = 2;
}
break;
case 2: // Smash Right
x+=2;
if x > xstart +720 {
    state = 3;
}
break;
case 3: // Move to Center (Left)
x-=4;
if abs(x - xstart) < 8 {
        x=xstart;
        state = 4;
        
}
break;
case 4: // find player
if alarm[0] == -1 {
    alarm[0]=220;
}
if alarm[0] == 0 {
    state=5;
}
with objLevel.player[0] {
    if x < other.x-2 {
    
        other.x -=2;
    
    } else if x > other.x+2 {
    
        other.x +=2;
    
    }
}
with handLeft {
   if alarm[1]== 0 {
   
        ydirection = 0;
        
   }
}
with handRight {
   if alarm[1]== 0 {
   
        ydirection = 0;
        
   }
}
break;
case 5: // Chomp
y+=1;
with head.jaw {
    if sensor.life > 0
        sensor.reaction_script=player_reaction_boss;
    alarm[1] = -1;
    if yoffset < 112 {
      yoffset+=1;
    }
    
}
with handLeft {
    if yoffset > -512 {
       // yoffset -= 4;
    }
}
with handRight {
    if yoffset > -512 {
       // yoffset -= 4;
    }
}

if ycollision <= y {
with instance_nearest(head.jaw.x-32,head.jaw.y,objMegaTrooperGround) instance_destroy();
with instance_nearest(head.jaw.x-16,head.jaw.y,objMegaTrooperGround) instance_destroy();
    state = 6;
}
with handLeft {
    alarm[1]= -1;
}
with handRight {
    alarm[1]= -1;
}
break;
case 6: // stop chomp
if y > yorigin {
    
    y-=1;
    
} else { 
        y = yorigin; 
        state = 1; 
        
    }

with head.jaw {
    yoffset-=1;
    
    if yoffset <= 56 {
        
        yoffset=56;
        sensor.reaction_script=noone;
    
    }
}
with handLeft {
   alarm[11]= 120;
        
}
with handRight {
    alarm[11]=60;
}
break;
case 7: // wait for mole driver to trigger 8
break;
case 8:
    with handLeft { reaction_script=noone; ycollision=4000; gravity = .2;}
    with handRight { reaction_script=noone; ycollision=4000; gravity = .2;}
    with objMegaTrooperOrb { gravity = .2; }
    with head { gravity = .185; }
    with head.jaw  { gravity = .185; }
    
    with head.jaw.sensor reaction_script=noone;
    
    if alarm[0] == -1 {
        with objMegaTrooperShoulder { gravity = .2; }
        gravity = .25;
    }
    
    with objLevel.player[0]{ camera.right = 17376; }
    stop_all_music(false);
    state=9;
break;
}

/// yoffset
//y+=cos(objScreen.image_index/16)*.25;

