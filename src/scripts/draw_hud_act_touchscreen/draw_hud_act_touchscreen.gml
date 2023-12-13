function draw_hud_act_touchscreen() {
	draw_lives(camera_get_view_x(view_camera[view_current]) + objScreen.width - 100, camera_get_view_y(view_camera[view_current]) - (16*objScreen.split_screen) + 4 );
	draw_shield_act();



}
