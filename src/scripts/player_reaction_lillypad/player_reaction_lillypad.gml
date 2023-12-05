/// @description  player_reaction_lillypad(local_id)
/// @param local_id
function player_reaction_lillypad(argument0) {
	if argument0.active == 0 {
    
	    argument0.alarm[0] = 20;
	    argument0.active = 1;
	    argument0.y +=2;
	}
	// hard collision found
	return false;



}
