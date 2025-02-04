if(image_index > 10)
{
	var _character_icon = 10 + objGameData.character_id[0];
	var _coins_icon = 14;
	image_index = LIVES_MODE_IS_CLASSIC ? _character_icon : _coins_icon;
}
	
tex = sprite_get_texture(sprite_index, image_index);

