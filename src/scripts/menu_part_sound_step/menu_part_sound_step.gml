function menu_part_sound_step() {
	menu_fn_step_default();

	if (state == 17)
	{
	    switch(confirmation_index)
	    {
	        case 0:
	            objMusicNew.masterGain = menu_fn_sync_slider(objMusicNew.masterGain);
	            break;
            
	        case 1:
	            objMusicNew.sfxGain = menu_fn_sync_slider(objMusicNew.sfxGain);
	            break;
            
	        case 2:
	            objMusicNew.bgmGain = menu_fn_sync_slider(objMusicNew.bgmGain);
	            break;
	    }
    
	    with (objMusicNew) event_user(0);
	}




}
