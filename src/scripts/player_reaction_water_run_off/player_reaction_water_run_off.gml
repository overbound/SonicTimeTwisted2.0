/// @description  player_reaction_water_run_off(local_id)
/// @param local_id
function player_reaction_water_run_off() {
	with objWater {
	    can_run = false;
	}
	return false;



}
