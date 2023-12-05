/// @description  Apply blur - forward (only relevant on Android)
/// @param only relevant on Android
if (objProgram.device_info & DEVICE_OS_ANDROID) {
    interpolation = (interpolation + 1) mod 3;
} else {
    interpolation = !interpolation;
}
alarm[1] = 1;
apply_video_settings();
save_options();

