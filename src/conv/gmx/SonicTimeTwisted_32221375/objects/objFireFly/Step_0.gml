/// @description  State Machine
if objLevel.cleared exit;
switch state {
case 0:

break;
case 1: // start firing 
    y=objFireFlyBossController.y+74;
    x=objFireFlyBossController.x+384;
    state=2;
    lightShot.x=x-2;
    
break;
case 2: // firing
    if x < objFireFlyBossController.x+64  && x > objFireFlyBossController.x+60 && lightShot.state == 0{
        
        lightShot.state=1;
        play_sfx(sndLaserShot,0);
        //lightShot.x=x;
    
    } else if x < objFireFlyBossController.x-64  && x > objFireFlyBossController.x-68 && lightShot.state == 0{
;
        lightShot.state=1;
        play_sfx(sndLaserShot,0);
        //lightShot.x=x;
    
    }
    
    lightShot.x=x-2;
    
    x-=2;
    if x <= objFireFlyBossController.x-384 {
    
        state=3;
    
    }
break;
case 3: // start firing 
    x=objFireFlyBossController.x-384;
    state=4;
    lightShot.x=x+2;
break;
case 4: // firing
    if x < objFireFlyBossController.x+128  && x > objFireFlyBossController.x+124 && lightShot.state == 0{
        
        lightShot.state=1;
        play_sfx(sndLaserShot,0);
    
    } else if x < objFireFlyBossController.x-128  && x > objFireFlyBossController.x-132 && lightShot.state == 0{
        
        lightShot.state=1;
        play_sfx(sndLaserShot,0);
    
    } else if x < objFireFlyBossController.x+2  && x > objFireFlyBossController.x-2 && lightShot.state == 0{
        
        lightShot.state=1;
        play_sfx(sndLaserShot,0);
    
    }
    lightShot.x=x+2;
    x+=2;
    if x >= objFireFlyBossController.x+384 {
    
        state=5;
    
    }
break;
case 5:
    instance_create(objFireFlyBossController.x,objFireFlyBossController.y+64,objMetalSonicUFOs);
    state = 6;
    
break;
case 6:
break;
case 7:
    blackAlpha+=.0125;
    if blackAlpha >=1 {
        state=8;
        with light {
        
            sprite_index=sprFireFlyLightLarge;
            visible=true;
        
        }
    }
    
break;
case 8: // move to center
    x-=4;
    if x <= objFireFlyBossController.x {
        if instance_exists(objLevel.player[0]) {
            direction = point_direction(x,y,objLevel.player[0].x,objLevel.player[0].y);
            speed = 2;
        }
        state=9;
        with objFireFly.light visible = true;
        alarm[0]=50;
    }
break;
case 9: // move toward player
    if alarm[0] == 0 {
        alarm[0]=200;
        state = 10;
    }
    
break;
case 10:
if alarm[0] == 0 {
    state=11;
    speed =0;
    direction=0;
}
break;
case 11:
    blackAlpha-=.0125;
    if blackAlpha <= 0 {
        blackAlpha = 0;
        state=1;
        with light {
            sprite_index=sprFireFlyLight;
            visible = false;
        }
    }
break;
case 12:
break;
case 13:
    image_angle+=15;
    
break;
}

