/// @description  Render HUD
if objProgram.paused
{
    draw_set_alpha(darkbg)
    draw_set_color(c_black);
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
    draw_set_color(c_white);
    draw_set_alpha(image_alpha);
}
else
{
// The part with score/time/rings is constant among contexts and input devices...
draw_hud_score_time_rings(objLevel.timer, objGameData.rings[view_current], __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ));
// While the shield's position depends on the context and the lives' position depends on the input device
script_execute(hud_draw_script);
}

