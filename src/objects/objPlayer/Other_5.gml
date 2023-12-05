if (!persistent)
{
	/// Clean up
	ds_list_destroy(terrain_list);
	ds_list_destroy(xtable);
	ds_list_destroy(ytable);

	// Remove id
	with (objLevel) player[other.player_id] = noone;

}
