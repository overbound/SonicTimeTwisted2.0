/// @description  generate debris
// go through rows
// get bounds
var width = sprite_width div 16;
var height = sprite_height div 16;

for (var j=0; j<height; j+=1)
{
    // go through collumns
    for (var i=0; i<width; i+=1)
    {
        // create block
        with instance_create(x+i*16, y+j*16, objVVBreakableWallDebris)
        {
            // setup sprite
            depth_mask=4;
            sprite_index = other.debris;
            depth = -1;
            
            if other.facing == 1
                direction = angle_wrap(20-j*4);
            else direction = angle_wrap(160-j*4);
            
            if objProgram.in_past
                image_index=1;
            // set delay on drop
            if other.facing == 1
                alarm[0] = 1+i*2;
            else alarm[0] = 1+4-i*2;
        }
    }
}

//with instance_create(x,y+16, objExampleBreakableDebris) {hspeed = -2; vspeed = -2; sprite_index = other.debris;}

