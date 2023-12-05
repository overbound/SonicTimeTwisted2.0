/// @description  Scroll through screen modes - forwards
event_user(3);
++video_mode; if (video_mode > max_scale) video_mode = 0;
apply_video_settings();
save_options();

