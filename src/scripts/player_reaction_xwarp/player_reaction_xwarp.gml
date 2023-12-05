function player_reaction_xwarp(argument0) {
	// player_reaction_xwarp(local_id)
	x-=argument0.xwarp;
	camera.x-=argument0.xwarp;
	__view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) - (argument0.xwarp) );
	// hard collision found
	return false;



}
