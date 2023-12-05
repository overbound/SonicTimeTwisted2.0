function menu_fn_get_touchscreen_bt_radius() {
	switch(objProgram.inputManager.vksize)
	{
	    case 0:
	        return 32;
	        break;
	    case 1:
	        return 24;
	        break;
	    default:
	        return 16;
	        break;
	}



}
