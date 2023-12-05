/// @description  in_view(view, offset)
/// @param view
/// @param  offset
function in_view(argument0, argument1) {
	return x>=__view_get( e__VW.XView, argument0 )-argument1 and y>=__view_get( e__VW.YView, argument0 )-argument1 and
	x<__view_get( e__VW.XView, argument0 )+__view_get( e__VW.WView, argument0 )+argument1 and
	y<__view_get( e__VW.YView, argument0 )+__view_get( e__VW.HView, argument0 )+argument1;



}
