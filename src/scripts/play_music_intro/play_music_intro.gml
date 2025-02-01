/// @description play_music_intro(song, position)
/// @param song
/// @param  position
function play_music_intro(song, position) {
	show_debug_message("play_music_intro is deprecated, redirecting calls to play_music instead (song = {0}, position = {1})", song, position);
	play_music(song, position);



}
