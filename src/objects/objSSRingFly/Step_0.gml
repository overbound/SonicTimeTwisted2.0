image_index = objScreen.image_index div 4;
if zspeed > -2
zspeed-=.2;
z +=zspeed;

timer-=1;

if timer < 60 {
    visible = !visible;
}

if timer <= 0 {
    instance_destroy();
}

/// set depth
depth = min(2000,distance_to_object(objSSCamera)/20);
depth1= depth;

