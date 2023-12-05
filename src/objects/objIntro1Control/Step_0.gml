 switch state {
    case 0: // PAN SCREEN
        
        //check if we've panned all the way right
        if __view_get( e__VW.XView, view_current )+__view_get( e__VW.WPort, view_current ) >= room_width
        {
            __view_set( e__VW.XView, view_current, room_width-__view_get( e__VW.WPort, view_current ) );
            
            if __view_get( e__VW.YView, view_current ) > 0//pan up until at the top
                __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (2) );    
                else{
                    state = -1;
                    alarm[0]=80;
                    }             
            }
        else//pan right
            __view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) + (1) );
    break;    
    case 1:// The Little Planet Appears
        with(objIntroLittlePlanet) {
            
        if visible == 0 {
        
            play_sfx(sndTLPWarp,0);
            
            }
            
            visible = 1;
            image_speed = 1;
            
            if image_index >= 12 {
                
                image_index = 12;
                image_speed = 0; 
                other.alarm[1]=60;
                other.state = -1;
                instance_create(x,y,objIntroMetalZoom);
                instance_create(x,y,objDustCloud);
                }
            }
    break;
    
    case 2:// Metal Sonic Zoom out of TLP
        with(objIntroMetalZoom){ 
            
            if visible == false {
                
                path_start(pthIntroMetalZoom,.5,0,true);
                other.alarm[11] = 4;
                visible = 1;
                image_speed = .1;
            }
            path_speed+=.15;
            
            if image_index >=8{
            
                image_speed = 0;
                image_index = 8;
                other.alarm[2]=60;
                other.state = -1;
            }
            }
            
            
    break;       
}

