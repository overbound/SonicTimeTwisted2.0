/// @description  Setup views
view_enabled = true;
image_index = 0;
view_set_visible(view_camera[0], true);
view_set_visible(view_camera[1], split_screen);
if split_screen view_set_yport(view_camera[1], height * 0.5);
for (var i = 0; i < 2; i += 1)
{
    camera_set_view_size(view_camera[i], width, height);
	view_set_wport(view_camera[i], width);
	view_set_hport(view_camera[i], (height * 0.5 * split_screen));
}

