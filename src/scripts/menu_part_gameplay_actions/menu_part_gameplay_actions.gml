function menu_part_gameplay_actions(argument0) {
	switch(argument0)
	{
	    case 0:
	        with(objGameData)
	        {
	            switch(livesMode)
				{
					case LIVES_CLASSIC: livesMode = LIVES_ORIGINS; break;
					case LIVES_ORIGINS: livesMode = LIVES_CLASSIC; break;
				}
	        }
	        break;
	    case 1:
	        // use this ID for a future option
	        break;
	    case 2:
	        // use this ID for a future option
	        break;
	    case 3:
	        // use this ID for a future option
	        break;
	    case 4:
	        // use this ID for a future option
	        break;
	    case 5:
	    case -1:
	        menu_fn_exit_submenu(menu_part_options_items, 0);
	        break;
	    case 6:
	        // use this ID for a future option
	        break;
	    case 7:
	        // use this ID for a future option
	        break;
		case 8:
			// use this ID for a future option
	        break;
		case 9:
			// use this ID for a future option
	        break;
	    case -2:
	        // left key
	        switch(items[cursor, 1])
	        {
	            case 0:
	                with(objGameData)
			        {
			            switch(livesMode)
						{
							case LIVES_CLASSIC: livesMode = LIVES_ORIGINS; break;
							case LIVES_ORIGINS: livesMode = LIVES_CLASSIC; break;
						}
			        }
	                break;
	            case 1:
	                // use this ID for a future option
	                break;
	            case 2:
	                // use this ID for a future option
	                break;
	            case 3:
	                // use this ID for a future option
	                break;
	            case 4:
	                // use this ID for a future option
	                break;
	            case 6:
	                // use this ID for a future option
	                break;
	            case 7:
	                // use this ID for a future option
	                break;
				case 8:
					// use this ID for a future option
					break;
				case 9:
					// use this ID for a future option
			        break;
	        }
	        break;
	    case -3:
	        // right key
	        switch(items[cursor, 1])
	        {
	            case 0:
	                with(objGameData)
			        {
			            switch(livesMode)
						{
							case LIVES_CLASSIC: livesMode = LIVES_ORIGINS; break;
							case LIVES_ORIGINS: livesMode = LIVES_CLASSIC; break;
						}
			        }
	                break;
	            case 1:
	                // use this ID for a future option
	                break;
	            case 2:
	                // use this ID for a future option
	                break;
	            case 3:
	                // use this ID for a future option
	                break;
	            case 4:
	                // use this ID for a future option
	                break;
	            case 6:
	                // use this ID for a future option
	                break;
	            case 7:
	                // use this ID for a future option
	                break;
				case 8:
					// use this ID for a future option
					break;
				case 9:
					// use this ID for a future option
			        break;
	        }
	        break;
	}

	// refresh displayed values
	// calculating the optimal menu width at the same time - done here so that possible values are not duplicated among several scripts
	menu_fn_calculate_width_start();

	var livesModeLabel1 = "< "+tr("_menu_gameplay_Lives_Classic")+ " >";
	var livesModeLabel2 = "< "+tr("_menu_gameplay_Lives_Origins")+ " >";

	switch(objGameData.livesMode)
	{
	    case LIVES_CLASSIC:
	        menu_fn_refresh_displayed_value(0, livesModeLabel1);
	        break;
	    case LIVES_ORIGINS:
	        menu_fn_refresh_displayed_value(0, livesModeLabel2);
	        break;
	}

	menu_fn_calculate_width_add(0, false, livesModeLabel1, livesModeLabel2);

	menu_fn_calculate_width_finish();
	// preserve the cursor value - usually false for the sake of touchscreen controls
	return false;



}
