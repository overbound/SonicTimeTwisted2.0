/// @description  Enemy behavior
// move towards closest player
if not (moving or waiting)
{
    var player = instance_nearest(x, y, objSSPlayer);
    
    if player>-1 {
    
        move_towards_point(player.x, player.y, 4); 
        moving = 32;
        waiting = 120;
        
        if zdirection == 1 {
        
            zdirection = -1;
        }
            else zdirection = 1;
        
    
    }
}
else if moving
{
    // delay body movement
    delay = (delay+1) mod 5;
    if (delay==0) {
    
        for(i=0; i<5; i++) with instance_create(x, y, objSSCaterminatorOrb) {/*depth=depth+other.i;*/ parent_id = other.id; timer = other.delay_offset; /*play_sfx(sndCaterminatorExtend,1);*/}
    }
}
// facing
if hspeed<0 image_xscale = -1;
if hspeed>0 image_xscale = 1;

/* */
action_inherited();
/*  */
