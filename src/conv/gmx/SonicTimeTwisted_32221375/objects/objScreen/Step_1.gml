/// @description  Unpause and handle Alt-Enter
if (not paused && sprite_exists(screenshot)) {
    sprite_delete(screenshot);
    screenshot = -1;
}


