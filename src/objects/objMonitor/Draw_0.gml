/// @description  Draw monitor
// monitor
draw_sprite_ext(sprite_index, objScreen.image_index div 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
// icon
if (objScreen.frame_counter != 0)
{
    // draw live icons based on lives mode (Character Icons for Classic, and Coin icon for Origins)
    if(icon > 10)
	{
		var _character_icon = 10 + objGameData.character_id[view_current];
		var _coins_icon = 14;
		draw_sprite(sprIcon, LIVES_MODE_IS_CLASSIC ? _character_icon : _coins_icon, x, y-image_yscale*2); 
	}
	else
	{
		draw_sprite(sprIcon, icon, x, y-image_yscale*2);
	}
}

