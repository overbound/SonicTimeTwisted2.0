/// @description Exclusively toggle fullscreen.

event_user(3);

if (video_mode > 0) {
    /* save current window scale into a temp var and go fullscreen */
    prev_video_mode = video_mode;
    video_mode = 0;
}
else {
    /* restore previous scale */
    video_mode = prev_video_mode;
}

apply_video_settings();
save_options();
show_debug_message("video_mode = " + string(video_mode));


/* */
/*  */
