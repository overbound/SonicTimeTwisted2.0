/// @description play_boss_loop(song, position)
/// @param song
/// @param  position
function play_boss_loop(song, position) {
	show_debug_message("play_boss_loop is deprecated, redirecting calls to play_boss instead (song = {0}, position = {1})", song, position);
	play_boss(song, position);



}
