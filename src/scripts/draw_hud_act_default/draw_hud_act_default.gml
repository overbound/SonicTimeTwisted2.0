function draw_hud_act_default() {
	if(objGameData.livesMode == LIVES_CLASSIC)
	{
		draw_lives(camera_get_view_x(view_camera[view_current])+16, camera_get_view_y(view_camera[view_current])+objScreen.height-24);
	}
	else if(objGameData.livesMode == LIVES_ORIGINS)
	{
		draw_coins(camera_get_view_x(view_camera[view_current])+16, camera_get_view_y(view_camera[view_current])+objScreen.height-24);
	}
	draw_shield_act();
}
