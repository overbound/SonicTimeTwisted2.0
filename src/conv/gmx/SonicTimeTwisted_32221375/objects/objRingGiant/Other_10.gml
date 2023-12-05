/// @description  load the ring when the room starts
completedRing=load_big_ring(tag);
if completedRing && (objProgram.special_future_current_level < 7 || objProgram.special_past_current_level < 7) {
    visible = false;
    reaction_script=noone;
} else if objProgram.temp_spawn_tag == tag {
    visible = false; 
    reaction_script=noone;
} else {
    visible = true; 
    reaction_script=player_reaction_giant_ring
}
if objProgram.in_past {
    sprite_index = sprRingGiantPast;
}

