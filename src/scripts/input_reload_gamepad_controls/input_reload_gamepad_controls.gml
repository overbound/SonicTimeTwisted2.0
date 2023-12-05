function input_reload_gamepad_controls() {
	with(objProgram.inputManager)
	{    
	    var fileName = "settings.ini";
	    if(stt_file_exists(fileName))
	    {
	        stt_ini_open(fileName);
	        input_load_gamepad_controls(true);
	        stt_ini_close();
	    }
	    else
	    {
	        input_load_gamepad_controls(false);
	    }
	}



}
