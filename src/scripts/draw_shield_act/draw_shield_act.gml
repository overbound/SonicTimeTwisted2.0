function draw_shield_act() {
	/*
	argument0 - parent offsetX
	argument1 - parent offsetY
	*/
	if(instance_exists(objLevel.player[0]))
	{
	    var shieldType = objLevel.player[0].shield_type;
	    if(shieldType > -1)
	    {
	        if (objScreen.show_shield) {
	            draw_text_colour(camera_get_view_x(view_camera[view_current])+14, camera_get_view_y(view_camera[view_current])+56-(16*objScreen.split_screen), string_hash_to_newline(tr("_HUD_SHIELD")), c_yellow, c_yellow, c_white, c_white, 1);
	            draw_sprite(sprShieldIconAct, shieldType, camera_get_view_x(view_camera[view_current])+122+ tr_get_real_prop("top_hud_offset"), camera_get_view_y(view_camera[view_current])+56-(16*objScreen.split_screen));
	        }
	    }
	}




}
