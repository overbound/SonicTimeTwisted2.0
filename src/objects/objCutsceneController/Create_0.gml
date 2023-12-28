camera_set_view_pos(view_camera[0], 0, 264);
state=0;
badnik[0]=instance_create(camera_get_view_x(view_camera[view_current]) + 32, 400,objBadnikCutscene);
with badnik[0]{ scale = .5; image_xscale = .5; image_yscale = .5; multiplier=2;}
badnik[1]=instance_create(camera_get_view_x(view_camera[view_current]) + 128, 384,objBadnikCutscene);
with badnik[1]{scale = .25; image_xscale = .25; image_yscale = .25; multiplier=4;}
badnik[2]=instance_create(camera_get_view_x(view_camera[view_current]) + 256, 384,objBadnikCutscene);
//play_sfx(bgmIntro,10);


