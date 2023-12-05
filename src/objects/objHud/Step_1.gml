/// @description  pause menu begin step
if objProgram.paused {
    if menu.state != 0 {
        with(menu) event_user(1);
    }
}

