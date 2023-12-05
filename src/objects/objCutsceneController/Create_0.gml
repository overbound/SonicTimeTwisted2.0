__view_set( e__VW.YView, 0, 264 );
__view_set( e__VW.XView, 0, 0 );
state=0;
badnik[0]=instance_create(32,400,objBadnikCutscene);
with badnik[0]{ scale = .5; image_xscale = .5; image_yscale = .5; multiplier=2;}
badnik[1]=instance_create(128,384,objBadnikCutscene);
with badnik[1]{scale = .25; image_xscale = .25; image_yscale = .25; multiplier=4;}
badnik[2]=instance_create(256,384,objBadnikCutscene);
//play_sfx(bgmIntro,10);


