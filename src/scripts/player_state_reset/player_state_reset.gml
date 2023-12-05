function player_state_reset() {
	// player_state_reset()
	var ox, oy;
	// define center offset
	ox = x-(__view_get( e__VW.XView, camera.view_id )+__view_get( e__VW.WView, camera.view_id )*0.5);
	oy = y-(__view_get( e__VW.YView, camera.view_id )+__view_get( e__VW.HView, camera.view_id )*0.5);
	// continue when camera catches up
	if (abs(ox)<=8) and (abs(oy)==0) state = player_state_fall;



}
