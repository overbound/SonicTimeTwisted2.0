switch state {
    
    case 0:
    
        if __view_get( e__VW.YView, view_current ) >= 0
            __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (8) );
        else {
            __view_set( e__VW.YView, view_current, 0 );
            state = -1;
            alarm[0]=20;
            }
    break;
    case 1://rotation frames
    
        visible = false;
        __background_set( e__BG.HSpeed, 0, 6 );
        
        with(objPyramidRotate){
        image_speed = .125;
        if image_index >= 7 {
            image_index = 7;
            image_speed = 0;
            other.state = -1;
            other.alarm[1] = 100;
            instance_create(x+227,y+59,objPyramidJump)
            __background_set( e__BG.HSpeed, 0, 0 );
        }}
    break;
    
    case 2:
    with objMetalBackFull {
    
        if y < 20
        y+=6;
        
        else {
            state = 3;
            }
        }
    break;
           
}

//make lights flash
if lights == true
    lights = false;
    else
        lights = true;

