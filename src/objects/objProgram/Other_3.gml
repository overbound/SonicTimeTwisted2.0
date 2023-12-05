/// @description  Clean up
audio_stop_all();
d3d_end();

if (objProgram.device_info & DEVICE_OS_PLAYSTATION) {
    if (ds_exists(storage_buffers, ds_type_map)) {
        for (var _k = ds_map_find_first(storage_buffers);
             ds_map_exists(storage_buffers, _k);
             _k = ds_map_find_next(storage_buffers, _k)) {
            var _v = storage_buffers[? _k];
            if (buffer_exists(_v)) buffer_delete(_v);
        }
        ds_map_destroy(storage_buffers);
    }
    
    if (ds_exists(storage_map, ds_type_map)) {
        ds_map_destroy(storage_map);
    }
}

if (ds_exists(no_save_data, ds_type_map)) ds_map_destroy(no_save_data);
if (ds_exists(future_list, ds_type_list)) ds_list_destroy(future_list);
if (ds_exists(past_list, ds_type_list)) ds_list_destroy(past_list);
if (ds_exists(special_future_list, ds_type_list)) ds_list_destroy(special_future_list);
if (ds_exists(special_past_list, ds_type_list)) ds_list_destroy(special_past_list);

// free arrays.
sine = 0;
cosine = 0;

