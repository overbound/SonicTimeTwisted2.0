function player_reload_special_moves(){
	if (character_id == 1)
	{
		// Sonic's special moves init
		/* 
		0 - insta-shield only
		1 - drop dash only
		2 - both, drop dash triggered by holding jump
		3 - both, drop dash trggered by pressing down twice
		*/
		// a small bitwise operation to store two values in one variable
		special_move_mode = objProgram.inputManager.sonic_special_move;
		if ((special_move_mode == 2) && (objProgram.inputManager.sonic_ddtrigger == 1))
		{
			special_move_mode = 3;	
		}
	} 
}