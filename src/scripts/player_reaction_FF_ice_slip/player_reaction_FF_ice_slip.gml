/// @description  player_reaction_FF_ice_slip(local_id)
/// @param local_id
function player_reaction_FF_ice_slip(argument0) {
	// set ice in motion if not already
	if (argument0.state == 0) {argument0.state = 1; argument0.remove = 0;}
	// not a hard collision
	return false;



}
