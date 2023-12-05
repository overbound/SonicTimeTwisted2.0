/// @description Skip and unpause the game.
event_inherited(); // skip

// unpause.
with (objScreen) {
    paused = false;
    image_speed = 1;
}

with (objProgram) {
    paused = false;
}

show_debug_message("Unpaused!");

