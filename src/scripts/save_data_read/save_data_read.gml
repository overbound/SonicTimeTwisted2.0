function save_data_read(section, key, default_value) {
	// Load a piece of save data
	// Usually this is read from an INI file, unless the no save slot is being played
	// In this case, a map in memory stores everything
	// argument0 - section, argument1 - key, argument2 - default value
	if(objProgram.saveSlot < 0)
	{
	    var dkey = section+"|"+key;
	    if(ds_map_exists(objProgram.no_save_data, dkey))
	    {
	        return ds_map_find_value(objProgram.no_save_data, dkey);
	    }
	    else
	    {
	        return default_value;
	    }
	}
	else
	{
	    show_debug_message("Read from save slot "+string(objProgram.saveSlot));
	    var filename = save_file_name(objProgram.saveSlot);
	    stt_ini_open(filename);
	    var result = base64_decode(ini_read_string(section, key, base64_encode(string(default_value))));
	    stt_ini_close();
	    return result;
	}



}
