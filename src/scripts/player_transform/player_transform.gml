/// @description  player_transform(flag?)
/// @param flag?
function player_transform(argument0) {
	// transform or de-transform?
	if argument0
	{
	    // set special form
	    specialForm = 1;
	    specialFormTimer = 0;
	    // setup animation based on character
	    switch character_id
	    {
	    case 1: // sonic
	        animation_table = objResources.anim_sonic_super;
	        break;
	    case 2: // tails
	    case 3: // knuckles
	        // no separate super animation set - the palette swap sells the form
	        break;
	    }
	}
	else
	{
	    // clear states
	    specialForm = 0;
	    specialFormTimer = 0;
	    // reveal shield
	    with shield visible = true;
	    // setup animation based on character
	    switch character_id
	    {
	    case 1: // sonic
	        animation_table = objResources.anim_sonic;
	        animation_reset = true;
	        break;
	    case 2: // tails
	    case 3: // knuckles
	        animation_reset = true;
	        break;
	    }
	}
	// reset physics
	player_reset_physics();



}
