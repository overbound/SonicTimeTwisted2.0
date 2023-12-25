function menu_part_charcontrols_items(){
	items = false;
	menu_fn_add_title(tr("_menu_charactercontrols_Title"));
	menu_fn_add_option(tr("_menu_charactercontrols_Sonic"), 0, 1, "");
	if (objProgram.inputManager.sonic_special_move > 1)
	{
		menu_fn_add_option(tr("_menu_charactercontrols_DropDashTrigger"), 1, 1, "");
	}
	menu_fn_add_option(tr("_menu_Back"), 2);

	action_script = menu_part_charcontrols_actions;
	draw_script = menu_fn_draw_default;
	step_script = menu_fn_step_default;
	keys_script = menu_fn_keys_default;
	touchscreen_script = menu_fn_touchscreen_default;
	
	// run this to refresh displayed existing values
	// -4 is an action that does not exist
	menu_part_charcontrols_actions(-4);
}