/// @description  Draw Hud
//if objScreen.paused exit;
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0);
// score / time / rings string
draw_set_font(objResources.fontHud);
if !objProgram.paused {

// The part with score/time/rings is constant among contexts and input devices...
draw_hud_score_time_rings(objSSLevel.timer, objSSPlayer.rings, 0, 0);
// While the shield's position depends on the context and the lives' position depends on the input device
script_execute(hud_draw_script);
} else {

    draw_set_color(c_black);
    draw_rectangle(0,0,426,240,false);
    draw_set_color(c_white);
}

