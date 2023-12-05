/// @description  Start the game

/* AUTHOR NOTE: May want to setup a title screen or menu here. For now, we'll
start the game immediately. */
first_run = !load_options();
with (inputManager) input_load();
with (objResources) event_user(0);
if (first_run)
{
    // Prevent disclaimer from showing up again.
    save_options();
    stt_save_files();
}
if(!show_startup_window())
{
    room_goto(titlescreen);
}

/* */
/*  */
