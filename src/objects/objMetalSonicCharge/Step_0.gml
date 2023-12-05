/// @description  Visibility Shield    
shieldVisible = !shieldVisible;

/// State Machine

switch state {

case 0:
break;
case 1:
    with objLevel.player[0] {
        camera.bottom = 1740;
        if objProgram.in_past {
            camera.bottom = 1712;
        }
        
        if camera.bottom < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) {
        
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (2) );
        
        } else {
            other.state =2;
            player_is_standing();
        }
    }
break;

case 2:
    if in_view(view_current,0) {
        //screen_shake();
        dir=0;
        ufos[0]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[0].dir=dir;
        dir+=36;
        ufos[1]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[1].dir=dir;
        dir+=36;
        ufos[2]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[2].dir=dir;
        dir+=36;
        ufos[3]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[3].dir=dir;
        dir+=36;
        ufos[4]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[4].dir=dir;
        dir+=36;
        ufos[5]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[5].dir=dir;
        dir+=36;
        ufos[6]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[6].dir=dir;
        dir+=36;
        ufos[7]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[7].dir=dir;
        dir+=36;
        ufos[8]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[8].dir=dir;
        dir+=36;
        ufos[9]=instance_create(x+lengthdir_x(length,dir),y+lengthdir_y(length,dir),objUFOCharge);
        ufos[9].dir=dir;
    
        state=3;
    }
break;
case 3:
    //screen_shake();
    for (i = 0; i < array_length(ufos); i ++) {
        ufos[i].dir+=15;
        ufos[i].x=x+lengthdir_x(length,ufos[i].dir)
        ufos[i].y=y+lengthdir_y(length,ufos[i].dir)
    }
    if length > 0 {
        length -=8;
    } else {
        for (i = 0; i < array_length(ufos); i ++) { 
            with ufos[i] instance_destroy();
        }
        length = 256;
        stateLoop+=1;
        if stateLoop < 10 {
            state = 2;
        } else state = 4;
        
    }
break;
case 4:
    flashOffset+=6;
    explosionAlpha +=.025;
    if flashOffset >= 480 {
        objProgram.cutscene = false;
        level_goto_next();
        
        state=5;
    }
break;
}

/// Hover + Sound
var time=0.1125;
var distance=4;
y = ystart+cos(objScreen.image_index*time)*distance;
if !audio_is_playing(sndQuake) && in_view(view_current,0){
    play_sfx(sndQuake,4);
}

