var __b__;
__b__ = action_if_variable(alarm[0], 0, 3);
if __b__
{
{
/// Update camera position
var ox, oy, view_yspeed;
// define center offset
ox = x-(__view_get( e__VW.XView, view_id )+__view_get( e__VW.WView, view_id )*0.5);
oy = y-(__view_get( e__VW.YView, view_id )+__view_get( e__VW.HView, view_id )*0.5);
if room == MM1 {
    ox +=88;
} 
// apply panning offsets camera cord reletive to center
ox += (offset_x*sine[gravity_direction])+(offset_y*cosine[gravity_direction]);
oy += (offset_x*cosine[gravity_direction])-(offset_y*sine[gravity_direction]);
// define borders
if abs(ox)>8 ox -= 8*sign(ox); else ox = 0;
if not ground_mode {if abs(oy)>32 oy -= 32*sign(oy); else oy = 0;}
// limit speed
view_yspeed = min(6+abs(y-yprevious), 22);
if abs(ox)>22 ox = 22*sign(ox);
if abs(oy)>view_yspeed oy = view_yspeed*sign(oy);
// horizontal movement
if panning_hspeed>0
{
    // move automatically
    if __view_get( e__VW.XView, view_id )<left __view_set( e__VW.XView, view_id, min(__view_get( e__VW.XView, view_id )+panning_hspeed, left) ); else
    if __view_get( e__VW.XView, view_id )+__view_get( e__VW.WView, view_id )>right __view_set( e__VW.XView, view_id, max(__view_get( e__VW.XView, view_id )-panning_hspeed, right-__view_get( e__VW.WView, view_id )) ); else
    panning_hspeed = 0;
}
else
{
    // focus on player
    if ox<0 and __view_get( e__VW.XView, view_id )>=left __view_set( e__VW.XView, view_id, max(__view_get( e__VW.XView, view_id )+ox, left) );
    if ox>0 and __view_get( e__VW.XView, view_id )+__view_get( e__VW.WView, view_id )<=right __view_set( e__VW.XView, view_id, min(__view_get( e__VW.XView, view_id )+ox, right-__view_get( e__VW.WView, view_id )) );
}
// vertical movement
if panning_vspeed>0
{
    // move automatically
    if __view_get( e__VW.YView, view_id )<top __view_set( e__VW.YView, view_id, min(__view_get( e__VW.YView, view_id )+panning_vspeed, top) ); else
    if __view_get( e__VW.YView, view_id )+__view_get( e__VW.HView, view_id )>bottom __view_set( e__VW.YView, view_id, max(__view_get( e__VW.YView, view_id )-panning_vspeed, bottom-__view_get( e__VW.HView, view_id )) ); else
    panning_vspeed = 0;
}
else
{
    // focus on player
    if oy<0 and __view_get( e__VW.YView, view_id )>=top __view_set( e__VW.YView, view_id, max(__view_get( e__VW.YView, view_id )+oy, top) );
    if oy>0 and __view_get( e__VW.YView, view_id )+__view_get( e__VW.HView, view_id )<=bottom __view_set( e__VW.YView, view_id, min(__view_get( e__VW.YView, view_id )+oy, bottom-__view_get( e__VW.HView, view_id )) );
}

// calculate xspeed only for reference
xSpeed = x - xprevious;

/// Screen Shake
if shake {
    var amountx=-4+round(random(8)); 
    while ( __view_get( e__VW.XView, view_id ) + amountx > right|| __view_get( e__VW.XView, view_id ) + amountx < left) { amountx=-4+round(random(8)); }
    
    var amounty=-4+round(random(8)); 
    while ( __view_get( e__VW.YView, view_id ) + amounty < top || __view_get( e__VW.YView, view_id ) + amounty > bottom) { amounty=-4+round(random(8)); }
       
        
        __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, view_id ) + amountx, left, right - __view_get( e__VW.WView, view_id )) );
        __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, view_id ) + amounty, top, bottom - __view_get( e__VW.HView, view_id )) );
        rumble(rumble_ground_shake);
    shake=false;
}

}
}
