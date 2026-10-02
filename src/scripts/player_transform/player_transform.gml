/// @description  player_transform(flag?)
/// @param flag?
function player_transform(argument0) {
	// transform or de-transform?
	if argument0
	{
	    // set special form: emeralds = super, stones = chrono, both = hybrid
	    // no collectibles: plain Super — scripted transforms (MM1 flight,
	    // temp_superform restore) must always grant a form, as release/2.0 did
	    if objProgram.special_future_current_level>=7 && objProgram.special_past_current_level>=7 specialForm = 3; else
	    if objProgram.special_past_current_level>=7 specialForm = 2; else
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
