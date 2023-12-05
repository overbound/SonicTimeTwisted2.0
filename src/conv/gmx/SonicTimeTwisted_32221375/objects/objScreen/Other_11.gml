/// @description  Scroll through screen modes - backwards
event_user(3);
--video_mode; if (video_mode < 0) video_mode = max_scale;
apply_video_settings();
save_options();

