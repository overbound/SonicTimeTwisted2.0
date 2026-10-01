function save_data_write(section, key, value) {
	// Save a piece of save data
	// Usually this is written to an INI file, unless the no save slot is being played
	// In this case, a map in memory stores everything
	if(objProgram.saveSlot < 0)
	{
	    ds_map_replace(objProgram.no_save_data, section+"|"+key, value);
	}
	else
	{
	    show_debug_message("Save to save slot "+string(objProgram.saveSlot));
	    var filename = save_file_name(objProgram.saveSlot);
	    stt_ini_open(filename);
	    ini_write_string(section, key, base64_encode(string(value)));
	    stt_ini_close();
	}



}
