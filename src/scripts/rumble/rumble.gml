/// @description  rumble(rumble_script)
/// @param rumble_script
function rumble() {
	/**
	Main method, to be used in other objects.
	Delegates to relevant scripts depending on whether rumble is enabled or not
	*/
	with(objProgram.inputManager)
	{
	    script_execute(input_rumble_trigger_script, argument[0]);
	}




}
