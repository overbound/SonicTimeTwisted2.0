/// @description Stop all music and reset all temp values.
event_inherited();
objProgram.first_run = false;
objProgram.spawn_tag = 0;
stop_all_music(false, true);
reset_temp_values();
if (ds_exists(objProgram.no_save_data, ds_type_map)) {
    ds_map_clear(objProgram.no_save_data);
}

// reset rings.
with (objGameData) {
    event_perform(ev_create, 0);
}

// reset time AND spawn tags.
with (objProgram) {
    // TODO: should this be put in reset_temp_values script instead?
    spawn_tag = 0;
    spawn_time = 36000;
    temp_spawn_tag = -1;
    temp_spawn_time = -1;
    temp_shield = -1;
    // fix issue #245 on GitHub.
    cutscene = 0;
}


