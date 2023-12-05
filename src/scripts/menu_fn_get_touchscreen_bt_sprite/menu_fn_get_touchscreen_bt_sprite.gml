function menu_fn_get_touchscreen_bt_sprite() {
	switch(objProgram.inputManager.vksize)
	{
	    case 0:
	        return sprTouchscreenButtonBig;
	        break;
	    case 1:
	        return sprTouchscreenButtonMed;
	        break;
	    default:
	        return sprTouchscreenButtonSmall;
	        break;
	}



}
