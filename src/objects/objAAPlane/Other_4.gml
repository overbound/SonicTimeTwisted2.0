if objProgram.spawn_tag != 0 { instance_destroy(); exit; }
// fade out only
with objTitlecard mode = 3;
set_input_enabled(false);
//play_music_intro(objMusic.musicIntroAsset,0);
//with objLevel started = true;

action_path(AAZPathPlane, 3, 0, 1);
