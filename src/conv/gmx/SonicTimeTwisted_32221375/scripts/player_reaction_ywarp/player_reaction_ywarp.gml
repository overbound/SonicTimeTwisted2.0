// player_reaction_ywarp(local_id)
y-=argument0.ywarp;
camera.y-=argument0.ywarp;
__view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (argument0.ywarp) );
// hard collision found
return false;
