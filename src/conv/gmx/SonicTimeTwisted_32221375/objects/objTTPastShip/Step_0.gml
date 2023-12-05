with objPlayer {
if underwater {
    other.visible = false;
    }
    else if  state != player_state_dead {
        other.visible = true;
    }
}
if destroy {
    if absolute_y < 500 {
        absolute_y += 1;
    }
}

