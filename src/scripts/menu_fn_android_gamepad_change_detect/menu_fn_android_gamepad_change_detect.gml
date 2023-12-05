/// @description  menu_fn_android_gamepad_change_detect()
function menu_fn_android_gamepad_change_detect() {
	if(objProgram.inputManager.paddesc == "")
	{
	    var currentDeviceLabel = string(sttandroid_gamepad_get_label(0, real(tr("_menu_gamepad_Device_Length"))));
	    if(currentDeviceLabel != "")
	    {
	        objProgram.inputManager.paddesc = currentDeviceLabel;
	        return true;
	    }
	}
	else
	{
	    if(!sttandroid_gamepad_has_assigned(0))
	    {
	        objProgram.inputManager.paddesc = "";
	        return true;
	    }
	}
	return false;



}
