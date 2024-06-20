if(objGameData.livesMode == LIVES_CLASSIC)
{
	if image_index > 10 {
		image_index = 10 + objGameData.character_id[0];
	}
}
else if(objGameData.livesMode == LIVES_ORIGINS)
{
	if image_index > 10 {
		image_index = 14;
	}
}
tex = sprite_get_texture(sprite_index, image_index);

