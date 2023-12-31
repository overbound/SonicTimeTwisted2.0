function input_method_auto_detect_gamepad_use() {
	if (pad == -1) {
	    pad = input_method_auto_determine_gamepad_to_use();
	    if (pad > -1) {
	        paddesc = gamepad_get_description(pad);
        
			var descLength = real(tr("_menu_gamepad_Device_Length"));
	        if (string_length(paddesc) > descLength) {
	            paddesc = string_copy(paddesc, 0, descLength - 3)+"...";
	        }
	        return input_method_auto_detect_gamepad_use();
	    }
	} else {
	    if (padarray[pad]) {
	        if (gamepad_button_check_pressed(pad, gp_padu) ||
	            gamepad_button_check_pressed(pad, gp_padd) ||
	            gamepad_button_check_pressed(pad, gp_padl) ||
	            gamepad_button_check_pressed(pad, gp_padr) ||
	            gamepad_button_check_pressed(pad, gp_select) ||
	            gamepad_button_check_pressed(pad, gp_start) ||
	            gamepad_button_check_pressed(pad, gp_face1) ||
	            gamepad_button_check_pressed(pad, gp_face2) ||
	            gamepad_button_check_pressed(pad, gp_face3) ||
	            gamepad_button_check_pressed(pad, gp_face4)) {
	            return true;
	        }
	    }
	}

	return false;



}
