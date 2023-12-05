/// @description  Pausing

// Since GMS analyzes ALL conditions joined by &&, one of them is exported to another if(), the one that has the least chances to succeed to every frame
if(input_check_pressed(cPAUSE))
{
    if(started && (!instance_exists(objTransition)) && (!objProgram.paused) && hud.menu.state == 0)
    {
        objProgram.paused = !objProgram.paused;
        game_pause(objProgram.paused);
    }
}

