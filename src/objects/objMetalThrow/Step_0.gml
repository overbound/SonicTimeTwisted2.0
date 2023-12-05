// get camera center
if view_id > -1
{
    var cx = __view_get( e__VW.XView, view_current )+(__view_get( e__VW.WView, view_current )*0.5);
    var cy = __view_get( e__VW.YView, view_current )+(__view_get( e__VW.HView, view_current )*0.5);
    
}
var camera = instance_nearest(x, y, objCamera);
// handle current state
switch state
{
case 0: // lock to nearest camera
    if instance_number(objMetalThrow) > 2 instance_destroy();
    if in_view(view_current, 32) {
     state = 1;
     play_sfx(sndUFOFly,10,true);
    }
    break;
case 1: // approach the camera
    if x<=cx+ox and y<=cy+oy-80 and x>=cx+ox-6 and y>=cy-oy {
    
        ox = x-cx;
        oy = y-cy;
        state = 2;
        
        alarm[0]=200;
        alarm[3]=120;     
        
        } 
    
    if x>=cx+ox {
        
        x -= 8;
        
    }
    else if x<=cx+ox {
        
        x += 8;
        
    }
    
    if y>=cy-80 {
        
        y -= 8;
    
    }
    else if  y<=cy-oy{
    
        y += 8;
    
    }
    
break;
case 2: // stick to camera and attack
    x = cx+ox;
    y = cy+oy+cos(objScreen.image_index/time)*offset;
    break;
case 3: // move out
    x -= 4;
    y += cos(objScreen.image_index/time)*offset;
    break;
}
// recoil after fire
if image_speed != 0 && image_index>1{
        
        x+=1;
        image_alpha-=.015;
    
    }
    
//y=floor(ystart+sin(objScreen.image_index/32)*8);


// laugh if sprite for it is playing
if sprite_index == sprMetalIdle && image_index = 2{
    if !audio_is_playing(sndMetalLaugh)
        play_sfx(sndMetalLaugh,1);
}

