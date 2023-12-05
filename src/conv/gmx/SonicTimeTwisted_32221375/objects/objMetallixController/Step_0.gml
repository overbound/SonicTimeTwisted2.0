/// @description  State machine
switch state {
case 0:
if playIntroLaser == true {
    play_sfx(sndEggWalkerCharge, 1);
    playIntroLaser = false;
}
with objMetallix {
            if y < other.y-70 {
                y+=2;
            } else {
                state = 1;
                other.state = 1;
            }
        }
        
       /* if view_yview > y -32 {
            view_yview -= 2;
        }*/
        
break;
case 1:
    
    state=2;
    
break;
case 2:
    
    if objMetallix.head.life < 5  {
        if objGameData.character_id[0] != 3 {
            platform[2]=instance_create(x,y+52,objMetallixPlatform);        
            with platform[2] { 
                state = 3;
                x=floor(xstart-cos(index*timex)*distancex)
            }
        }
        state =3;
    }
break;
case 3:
break;
case 4:
    var fadeSpeed=.0125;
    flashOffset+=16;
    if (image_alpha<1.5) {
        image_alpha += fadeSpeed;
        if(!objProgram.in_past) {
            screen_shake();
        }
    } else {
        if !objProgram.in_past {
            state=5;
            instance_create(x,y,objScoreCard);
            with objLevel cleared = true;
        } else {
            state = 6;
        with objLevel.player[0] {
            camera.right = 17600;
            camera.bottom = room_height;
        }
        
        }
        with objMetallix visible = false;
    }
break;
case 6:
    var fadeSpeed=.025;
    if (image_alpha>0) {
        image_alpha -= fadeSpeed;
    } else state = 7;
break;
}

/* */
/// Move Camera
if instance_exists(objLevel.player[0]) && state < 6 {
    with objLevel.player[0] {
    
        if camera.bottom < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) {
        
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (2) );
        
        }
    }
}

/* */
/*  */
