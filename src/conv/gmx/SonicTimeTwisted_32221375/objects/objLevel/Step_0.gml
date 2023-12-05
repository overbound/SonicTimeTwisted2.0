/// @description  Pausing
if started and not instance_exists(objTransition) and input_check_pressed(cPAUSE) {
    if not objProgram.paused {
        objProgram.paused = true;
        game_pause(objProgram.paused);
    }
}

