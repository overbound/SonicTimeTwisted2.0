/// @description  Give control back to player
with objLevel.player[0] {
    // states and flags
    state = player_state_stand;
    spinning = false;
    jumping = false;
    jump_action = false;
    rolling_jump = false;
    facing = 1;
}
visible = false;
state = 4;
with objLevel {
    started = true;
    cleared = false;
    timer_enabled = true;
}

