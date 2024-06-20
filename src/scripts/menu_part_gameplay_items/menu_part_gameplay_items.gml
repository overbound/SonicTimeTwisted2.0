function menu_part_gameplay_items() {
	items = false;

	menu_fn_add_title(tr("_menu_gameplay_Title"));
	menu_fn_add_option(tr("_menu_gameplay_Lives"), 0, 1, "");
	menu_fn_add_option(tr("_menu_Back"), 5);
	

	action_script = menu_part_gameplay_actions;
	draw_script = menu_fn_draw_default;
	step_script = menu_fn_step_default;
	keys_script = menu_fn_keys_default;
	touchscreen_script = menu_fn_touchscreen_default;

	// run this to refresh displayed existing values
	// -4 is an action that does not exist
	menu_part_gameplay_actions(-4);



}
