function input_method_android_auto_ggpoint() {
	if (sttandroid_input_check_any_pressed()) {
	    set_input_method(INPUT_AUTO, false, INPUT_OS_SPECIFIC_1);
	} else {
	    input_method_ggpoint();
	}




}
