//end_VV1
with objVV1BossBroken {
    state = 1;
}
with objLevel.player[0] {
    // states and flags
    state = player_state_stand;
    spinning = false;
    jumping = false;
    jump_action = false;
    rolling_jump = false;
    facing = 1;
    camera.right = room_width;
    animation = "level_start";
    if character_id == 3 {
        instance_create(x-8,y-16,objFallHat)
    }
}
