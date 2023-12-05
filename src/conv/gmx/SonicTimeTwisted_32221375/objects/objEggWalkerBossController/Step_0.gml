switch state {
case 0:
//if(view_yview[0]+view_hview[0] > objLevel.player[0].camera.bottom)
    //view_yview[view_current]-=2;
    
    //objLevel.player[0].camera = noone;
break;
// Shift Camera Right
case 1:
// 

if(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) > objLevel.player[0].camera.bottom){
    __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (2) );
    }
    
if __view_get( e__VW.XView, view_current ) < objEggWalker.x-360{   //10888
    
  with objLevel.player[0] {
    camera.left +=2;
    camera.right +=3;
   //objLevel.player[0].camera.x+=8;
   __view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) + (2) );
}
    
}
    else {
    
        state = 1.5;
        alarm[1] = 80;
        
    }
    
break;
case 2:
with objLevel.player[0] {
    
 /*   if camera.left > objEggWalkerBossController.x-392 {
        camera.left -=2;
    }*/
}
break;
case 3: 
stop_all_music(false);
with objLevel.player[0].camera { right = other.x + 586}
state = 4;

break;
}

/* */
/*  */
