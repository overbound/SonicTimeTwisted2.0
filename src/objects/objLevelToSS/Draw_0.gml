if sprite_exists(screenshot)
{
    //gpu_set_blendenable(false);
    draw_sprite_stretched_ext(screenshot, 0, camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), objScreen.width, objScreen.height, c_white, image_alpha);
    //gpu_set_blendenable(true);
}

