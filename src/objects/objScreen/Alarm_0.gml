/// @description Center window after resize and apply interpolation
if (objProgram.device_info & DEVICE_TYPE_COMPUTER) {
    if (window_scale != 0) {
        window_center();
    }
}
texture_set_interpolation(interpolation);


