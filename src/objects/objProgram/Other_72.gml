/// @description React to saveload events from the PS's firmware.

// is this an audiogroup event?
if (ds_map_exists(async_load, "group_id"))
{
    show_debug_message("Loaded Audiogroup ID " + string(async_load[? "group_id"]));
    exit;
}

if (objProgram.device_info & DEVICE_OS_PLAYSTATION)
{
    show_debug_message("[STT-PS]: async_load ds map as JSON:");
    show_debug_message(json_encode(async_load));
    
    var _id = async_load[? "id"];
    var _status = async_load[? "status"]; // true or false
    var _error = async_load[? "error"]; // PS error code or 0 if OK.
    var _ok = (_status == true && _error == 0);
    
    if (_id == async_id)
    {
        if (!_ok)
        {
            show_debug_message("[STT-PS]: Savedata load failed " + string(_error) + " " + string(_status));
        }
        
        if (async_loading)
        {
            async_loading = false;
            
            for (var _k = ds_map_find_first(storage_buffers);
                ds_map_exists(storage_buffers, _k);
                _k = ds_map_find_next(storage_buffers, _k)) {
                
                var _v = storage_buffers[? _k];
                
                storage_map[? _k] = buffer_read(_v, buffer_string);
                buffer_delete(_v);
                show_debug_message("[STT-PS]: Loaded file " + _k);
            }
            
            ds_map_clear(storage_buffers);
            
            event_user(1);
        }
        else
        {
            for (var _k = ds_map_find_first(storage_buffers);
                ds_map_exists(storage_buffers, _k);
                _k = ds_map_find_next(storage_buffers, _k)) {
                
                var _v = storage_buffers[? _k];
                
                buffer_delete(_v);
            }
            
            ds_map_clear(storage_buffers);
            show_debug_message("[STT-PS]: Saved!");
        }
    }
    
    async_busy = false;
    
    var p = inputManager.pad;
    if (gamepad_button_check(p, gp_face1)
    &&  gamepad_button_check(p, gp_face3)
    &&  gamepad_button_check(p, gp_face4)
    &&  gamepad_button_check(p, gp_start))
    {
        show_debug_overlay(true);
    }
}

