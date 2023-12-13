/// @description  in_view(view, offset)
/// @param view
/// @param  offset
function in_view(view_id = view_current, view_offset = 0) {
	return (x >= camera_get_view_x(view_camera[view_id]) - view_offset and y >= camera_get_view_y(view_camera[view_id]) - view_offset and
	x < camera_get_view_x(view_camera[view_id]) + camera_get_view_width(view_camera[view_id]) + view_offset and
	y < camera_get_view_y(view_camera[view_id]) + camera_get_view_height(view_camera[view_id]) + view_offset);



}
