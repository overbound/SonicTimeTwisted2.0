/// @description  Delete input stream
if (ds_exists(stream, ds_type_list)) ds_list_destroy(stream);
computer_input_reset_state();

