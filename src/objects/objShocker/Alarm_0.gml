
if shockerHandle == noone {
    shockerHandle = instance_create(x,y+2,objShockerLaser);
    alarm[0] = 220;
    
    } else {
    
        with shockerHandle { instance_destroy(); }
        
        shockerHandle = noone;
        alarm[0] = 500;
    }
    

