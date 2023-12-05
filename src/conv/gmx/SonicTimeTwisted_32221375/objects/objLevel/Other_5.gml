/// @description  stop audio
stop_all_music(false);
audio_stop_all();

/// End level
// free particle system
part_system_destroy(particles);
// reset global data
if cleared
{
    // spawn position
    objProgram.spawn_tag = 0;
    objProgram.spawn_time = 36000;
    objProgram.temp_spawn_tag = -1;
    objProgram.temp_spawn_time = -1;
    objProgram.cutscene = false;
    
    if ds_exists(objProgram.life_future_list,ds_type_list) {
        ds_list_destroy(objProgram.life_future_list);
        ds_list_destroy(objProgram.ring_future_list);
    }
        
    if ds_exists(objProgram.life_past_list,ds_type_list) {
        ds_list_destroy(objProgram.life_past_list);
        ds_list_destroy(objProgram.ring_past_list);
    }
    
    // rings
    objGameData.rings[0] = 0;
    objGameData.rings[1] = 0;
    
    // destory objLevel since it persists
    instance_destroy();
}

