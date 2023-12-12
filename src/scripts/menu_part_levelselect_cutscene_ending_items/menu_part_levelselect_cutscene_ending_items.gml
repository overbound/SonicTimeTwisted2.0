function menu_part_levelselect_cutscene_ending_items() {
	items = false;

	menu_fn_add_title(tr("_levelselect_menu_CUT2"));
	menu_fn_add_option(tr("_cutselect_CUT2Bad"), 0);
	menu_fn_add_option(tr("_cutselect_CUT2NoChaos"), 1);
	menu_fn_add_option(tr("_cutselect_CUT2NoTime"), 2);
	menu_fn_add_option(tr("_cutselect_CUT2True"), 3);
	menu_fn_add_option(tr("_levelselect_menu_Back"), 4);

	// this means "level select"
	menu_type = 3;

	menu_fn_calculate_width_simple();

	action_script = menu_part_levelselect_cutscene_ending_actions;
	draw_script = menu_fn_draw_default;
	step_script = menu_fn_step_default;
	keys_script = menu_fn_keys_default;
	touchscreen_script = menu_fn_touchscreen_default;



}
