function draw_hud_act_default() {
	draw_lives(__view_get( e__VW.XView, view_current )+16, __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, 0 )-24);
	draw_shield_act();



}
