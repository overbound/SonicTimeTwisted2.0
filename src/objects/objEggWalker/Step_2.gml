var __b__;
__b__ = action_if(destroyed && frontRightLeg[1].stop == true && frontLeftLeg[1].stop == true && backLeftLeg[1].stop == true && backRightLeg[1].stop == true);
if !__b__
{
{
__b__ = action_if_variable(image_xscale, 1, 0);
if __b__
{
{
/// Leg Movement Left
//FRONT RIGHT

with frontRightLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;

}

with frontRightLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;

}

with frontRightLeg[1] {

    if stop == false {
        angleOffset = floor(cos(step / other.legFrames) * 35)
        image_angle = 70 + angleOffset; //cos
    }

    if image_angle > 100 && stop == false && sign(angleOffset) == 1 && allowStop == true {

        image_angle = 101;
        other.xspeed = 0;
        stop = true;
        allowStop = false;
        if objEggWalkerBossController.state == 1 || objEggWalkerBossController.state == 2
            play_sfx(sndEggWalkerStomp, 1);

    }

}

// FRONT LEFT

with frontLeftLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;

}

with frontLeftLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;

}

with frontLeftLeg[1] {

    if stop == false {
        angleOffset = -floor(cos(step / other.legFrames) * 35); //sin
        image_angle = 290 + angleOffset;

    }

    if image_angle < 260 && stop == false && sign(angleOffset) == -1 && allowStop == true {

        image_angle = 261;
        other.xspeed = 0;
        stop = true;
        allowStop = false;

    }
}

// BACK RIGHT

with backRightLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;
}
with backRightLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;
}

with backRightLeg[1] {

    if stop == false {

        angleOffset = floor(sin(step / other.legFrames) * 35);
        image_angle = 70 + angleOffset;
    }

    if image_angle > 100 && stop == false && sign(angleOffset) == 1 && allowStop == true {

        image_angle = 101;
        stop = true;
        other.xspeed = 0;
        allowStop = false;
    }
}

// BACK LEFT

with backLeftLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;
}

with backLeftLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;
}

with backLeftLeg[1] {

    if stop == false {

        angleOffset = -floor(sin(step / other.legFrames) * 35);
        image_angle = 290 + angleOffset; //sin

    }
    if image_angle < 260 && stop == false && sign(angleOffset) == -1 && allowStop == true {

        image_angle = 261;
        other.xspeed = 0;
        stop = true;
        allowStop = false;
    }
}

if frontRightLeg[1].stop == false && frontLeftLeg[1].stop == false && backLeftLeg[1].stop == false && backRightLeg[1].stop == false && backRightLeg[1].allowStop == false && alarm[0] == -1 {

    alarm[0] = 10;

}

/// Gun Movement Left



    for(i = 0; i < 2; i+=1){
    with gunHandle[i] {

        x = other.x+xoffset;
        y = other.y+yoffset;

        }
    }


}
}
else
{
{
/// Leg Movement Right
// Leg Movement
//FRONT RIGHT

with frontRightLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;

}

with frontRightLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;

}

with frontRightLeg[1] {

    if stop == false {
        angleOffset = floor(sin(step / other.legFrames) * 35)
        image_angle = 290 + angleOffset; //cos
    }

    if image_angle < 260 && stop == false && sign(angleOffset) == -1 && allowStop == true {

        image_angle = 261;
        stop = true;
        allowStop = false;
        if objEggWalkerBossController.state == 1 || objEggWalkerBossController.state == 2
            play_sfx(sndEggWalkerStomp, 1);
    }
}


// FRONT LEFT

with frontLeftLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;

}

with frontLeftLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;

}

with frontLeftLeg[1] {

    if stop == false {
        angleOffset = -floor(sin(step / other.legFrames) * 35); 
        image_angle = 70 + angleOffset;//290

    }

    if image_angle > 100 && stop == false && sign(angleOffset) == 1 && allowStop == true {

        image_angle = 101;
        other.xspeed = 0;
        stop = true;
        allowStop = false;

    }
}


// BACK RIGHT

with backRightLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;
}
with backRightLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;
}

with backRightLeg[1] {

    if stop == false {

        angleOffset = floor(cos(step / other.legFrames) * 35); //cos
        image_angle = 290 + angleOffset;//70
    }

    if image_angle < 260 && stop == false && sign(angleOffset) == -1 && allowStop == true {//100

        image_angle = 261;//101
        stop = true;
        other.xspeed = 0;
        allowStop = false;
    }
}


// BACK LEFT

with backLeftLeg[0] {

    x = other.x + xoffset;
    y = other.y + yoffset;
}

with backLeftLeg[1] {

    x = other.x + xoffset;
    y = other.ystart + yoffset;
}


with backLeftLeg[1] {

    if stop == false {

        angleOffset = -floor(cos(step / other.legFrames) * 35);
        image_angle = 70 + angleOffset; //290

    }
    if image_angle > 100 && stop == false && sign(angleOffset) == 1 && allowStop == true {

        image_angle = 101;
        other.xspeed = 0;
        stop = true;
        allowStop = false;
    }
}

if frontRightLeg[1].stop == false && frontLeftLeg[1].stop == false && backLeftLeg[1].stop == false && backRightLeg[1].stop == false && backRightLeg[1].allowStop == false && alarm[0] == -1 {

    alarm[0] = 10;

}

/// Gun Movement Right



    for(i = 0; i < 2; i+=1){
    with gunHandle[i] {

        x = other.x+xoffset;
        y = other.y+yoffset;

        }
    }


}
}
}
}
/// Egg Movement
x+=xspeed;

//bounce in his step
if !destroyed 
    y=ystart-floor(cos(objScreen.image_index/(legFrames*.5))*1.025);
   else if y < ystart +8  {
        
        y+=1;
        xspeed=0;
        alarm[1] = -1;
        reaction_script=noone;
        
        if !instance_exists(objSmokeSpawn) {
           smokeSpawn[0] = instance_create(x,y-64,objSmokeSpawn);
           smokeSpawn[1] = instance_create(x,y-64,objSmokeSpawn);
           smokeSpawn[2] = instance_create(x,y-64,objSmokeSpawn);
        }
           
        with smokeSpawn[0] {
        
            x=other.x-64;
            y=other.y-80;
        
        } 
        
        with smokeSpawn[1] {
        
            x=other.x-96;
            y=other.y-128;
        
        } 
        
        with smokeSpawn[2] {
        
            x=other.x-32;
            y=other.y-160;
        
        } 

       /* with objLevel.player[0] {
        
           // camera.right = room_width;
        
        }*/
        
        /// reset walk timeline
        timeline_index = timeEggWalkerStartWalk
        timeline_position = 0;
        timeline_running = false;
        timeline_loop = false;


    }/* else {
        
            frontRightLeg[0].stop = true;
            frontRightLeg[1].stop = true;
            frontLeftLeg[0].stop = true;
            frontLeftLeg[1].stop = true;
            backRightLeg[0].stop = true;
            backRightLeg[1].stop = true;
            backLeftLeg[0].stop = true;
            backLeftLeg[1].stop = true;
        }*/


/* */
/// Sensors

if image_xscale == -1
    with sensorHandle {
    
        x = other.x+30;
        y = other.y-91;
    
    }
else
    with sensorHandle {
    
        x = other.x-30;
        y = other.y-91;
    
    }

/* */
/*  */
