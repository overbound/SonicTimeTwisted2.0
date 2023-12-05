/// @description  Clean up
if (ds_exists(stream, ds_type_list)) ds_list_destroy(stream);
if (ds_exists(rumble_queue, ds_type_queue)) ds_queue_destroy(rumble_queue);
computer_input_reset_state();

