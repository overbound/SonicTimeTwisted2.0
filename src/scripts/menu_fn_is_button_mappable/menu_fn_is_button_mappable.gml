/// @description  returns TRUE if gamepad button is already mapped to a different command, FALSE otherwise
function menu_fn_is_button_mappable(argument0, argument1) {
	// Used to prevent mapping the same gamepad button twice
	// argument0 - button to map (GMS code)
	// argument1 - button to map (STT code)
	with(objProgram.inputManager)
	{
	    for (i = 0; i < button_count; i++)
	    {
	        if(button[i] == argument0)
	        {
	            // still allow recreating a mapping already in place
	            return button_control[i] == argument1;
	        }
	    }
	}
	return true;



}
