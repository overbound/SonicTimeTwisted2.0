/// @description menu_fn_exit_submenu(item_script,next_cursor)
/// @param item_script
/// @param next_cursor
function menu_fn_exit_submenu(argument0, argument1) {
	play_sfx(sndCancel);
	next_item_script = argument0;
	next_cursor = argument1;

	timer = 0;
	state = 7;



}
