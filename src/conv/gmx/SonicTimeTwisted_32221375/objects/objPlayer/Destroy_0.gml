/// @description  Clean up
ds_list_destroy(terrain_list);
ds_list_destroy(xtable);
ds_list_destroy(ytable);

// Remove tails' tails
if (character_id==2) with tails_effect instance_destroy();

// Remove id
with (objLevel) player[other.player_id] = noone;

