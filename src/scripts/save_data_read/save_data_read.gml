function save_data_read(argument0, argument1, argument2) {
	// Load a piece of save data
	// Usually this is read from an INI file, unless the no save slot is being played
	// In this case, a map in memory stores everything
	// argument0 - section, argument1 - key, argument2 - default value
	if(objProgram.saveSlot < 0)
	{
	    var key = argument0+"|"+argument1;
	    if(ds_map_exists(objProgram.no_save_data, key))
	    {
	        return ds_map_find_value(objProgram.no_save_data, key);
	    }
	    else
	    {
	        return argument2;
	    }
	}
	else
	{
	    show_debug_message("Read from save slot "+string(objProgram.saveSlot));
	    var filename = save_file_name(objProgram.saveSlot);
	    stt_ini_open(filename);
	    var result = base64_decode(ini_read_string(argument0, argument1, base64_encode(string(argument2))));
	    stt_ini_close();
	    return result;
	}



}
