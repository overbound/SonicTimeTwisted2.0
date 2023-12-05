function rumble_reset() {
	// Must be called from within an objInput
	ds_queue_clear(rumble_queue);
	script_execute(input_rumble_perform_script);



}
