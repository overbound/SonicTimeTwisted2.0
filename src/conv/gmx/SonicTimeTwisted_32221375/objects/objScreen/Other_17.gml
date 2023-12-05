/// @description  Apply blur - back (only relevant on Android)
/// @param only relevant on Android
if (objProgram.device_info & DEVICE_OS_ANDROID) {
    interpolation = interpolation - 1;
    if (interpolation < 0) {
        interpolation = 2;
    }
} else {
    interpolation = !interpolation;
}
alarm[1] = 1;
save_options();

