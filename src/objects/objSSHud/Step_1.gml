/// @description  pause menu begin step
if objProgram.paused || menu.menu_type == 2 {
    if menu.state != 0 {
        with(menu) event_user(1);
    }
}

