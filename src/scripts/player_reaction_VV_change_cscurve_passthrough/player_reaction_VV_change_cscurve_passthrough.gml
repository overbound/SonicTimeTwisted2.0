/// @description  change the "passthrough" of conditionally solid curves
function player_reaction_VV_change_cscurve_passthrough(argument0) {
	with (objVVCSCurveConcave)
	{
	    through = argument0.set_through;
	}
	// not a hard collision
	return false;



}
