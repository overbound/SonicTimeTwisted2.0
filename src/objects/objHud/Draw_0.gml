/// @description  Render HUD
if objProgram.paused
{
    draw_set_alpha(darkbg)
    draw_set_color(c_black);
    draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+objScreen.width,camera_get_view_y(view_camera[0])+objScreen.height,false);
    draw_set_color(c_white);
    draw_set_alpha(image_alpha);
}
else
{
// The part with score/time/rings is constant among contexts and input devices...
draw_hud_score_time_rings(objLevel.timer, objGameData.rings[view_current], camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]));
// While the shield's position depends on the context and the lives' position depends on the input device
script_execute(hud_draw_script);
}

