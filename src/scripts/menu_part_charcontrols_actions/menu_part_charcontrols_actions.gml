function menu_part_charcontrols_actions(argument0){
	switch(argument0)
	{
	    case 0:
	        objProgram.inputManager.sonic_special_move = (objProgram.inputManager.sonic_special_move + 1) % 3;
	        menu_fn_set_scripts(menu_part_charcontrols_items, 0);
	        break;
	    case 1:
	        if (objProgram.inputManager.sonic_special_move == 2)
			{
				objProgram.inputManager.sonic_ddtrigger = 1 - objProgram.inputManager.sonic_ddtrigger;
			}
	        break;
	    case 2:
	    case -1:
	        save_options();
	        menu_fn_exit_submenu(menu_part_input_items, 7);
	        break;
	    case -2:
	        // left key
	        switch(items[cursor, 1])
			{
				case 0:
					objProgram.inputManager.sonic_special_move -= 1;
					if (objProgram.inputManager.sonic_special_move < 0)
					{
						objProgram.inputManager.sonic_special_move = 2;
					}
					menu_fn_set_scripts(menu_part_charcontrols_items, 0);
					break;
				case 1:
			        if (objProgram.inputManager.sonic_special_move == 2)
					{
						objProgram.inputManager.sonic_ddtrigger = 1 - objProgram.inputManager.sonic_ddtrigger;
					}
					break;
			}
			break;
	    case -3:
	        // right key
	        switch(items[cursor, 1])
			{
				case 0:
					objProgram.inputManager.sonic_special_move = (objProgram.inputManager.sonic_special_move + 1) % 3;
					menu_fn_set_scripts(menu_part_charcontrols_items, 0);
					break;
				case 1:
			        if (objProgram.inputManager.sonic_special_move == 2)
					{
						objProgram.inputManager.sonic_ddtrigger = 1 - objProgram.inputManager.sonic_ddtrigger;
					}
					break;
			}
			break;
	}
	var sonicMoveLabel_instashield = "< "+tr("_menu_charactercontrols_Sonic_InstaShield")+ " >";
	var sonicMoveLabel_dropdash = "< "+tr("_menu_charactercontrols_Sonic_DropDash")+ " >";
	var sonicMoveLabel_both = "< "+tr("_menu_charactercontrols_Sonic_Both")+ " >";
	var ddTriggerLabel_downtwice = "< "+tr("_menu_charactercontrols_DropDashTrigger_DownTwice")+ " >";
	var ddTriggerLabel_holdjump = "< "+tr("_menu_charactercontrols_DropDashTrigger_HoldJump")+ " >";
	
	switch(objProgram.inputManager.sonic_special_move)
	{
		case 0:
			menu_fn_refresh_displayed_value(0, sonicMoveLabel_instashield);
			break;
		case 1:
			menu_fn_refresh_displayed_value(0, sonicMoveLabel_dropdash);
			break;
		case 2:
			menu_fn_refresh_displayed_value(0, sonicMoveLabel_both);
			break;
	}
	switch(objProgram.inputManager.sonic_ddtrigger)
	{
		case 0:
			menu_fn_refresh_displayed_value(1, ddTriggerLabel_holdjump);
			break;
		case 1:
			menu_fn_refresh_displayed_value(1, ddTriggerLabel_downtwice);
			break;
	}
	
	// calculating the optimal menu width
	menu_fn_calculate_width_start();
	menu_fn_calculate_width_add(0, false, sonicMoveLabel_instashield, sonicMoveLabel_dropdash, sonicMoveLabel_both);
	menu_fn_calculate_width_add(1, false, ddTriggerLabel_downtwice, ddTriggerLabel_holdjump);
	menu_fn_calculate_width_finish();
	
	// preserve the cursor value - usually false for the sake of touchscreen controls
	return false;
}