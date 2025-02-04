if (objProgram.spawn_tag != 0)
{
	was_removed = true;
	instance_destroy();
	exit;
}
event_inherited();
/// Initialize
// states and flags
state = 0;
// boss object
boss = instance_create(objScreen.width, (objScreen.height-10), objAA1Boss);
// moving platforms
plat[0] = instance_create(256, 192, objAA1BossFloor);
plat[0].hspeed = -4.5;
plat[0].image_xscale = -1;
plat[1] = instance_create(512, 320, objAA1BossFloor);
plat[1].hspeed = -4.5;
plat[1].image_xscale = -1;
// boss theme
set_boss_music(room);
play_boss(objMusicNew.bossAsset, 0);
// replace background
with objAAFutureBack instance_destroy();
with objParallax instance_destroy();
background = instance_create_depth(0, 0, 1025, objProgram.in_past ? objAA1BossPastBack : objAA1BossFutureBack);
    
for (var i=0; i<4; i+=1)
{
	instance_create_depth(i*256, 192+(i*128), 1024, objAA1BossFloorBack);
}
with objLevel started = true;
with objProgram cutscene = true;

/// Setup boss fight
// fade out only
with objTitlecard mode = 3;
// limit player boundaries
with objPlayer
{
    // start moving
    //xspeed = 6;
    player_is_standing();
    // lock camera at the start
    camera.left = camera.x-(camera_get_view_width(view_camera[camera.view_id]) / 2);
    camera.right = camera.x+(camera_get_view_width(view_camera[camera.view_id]) / 2);
    camera.top = camera.y-(camera_get_view_height(view_camera[camera.view_id]) / 2);
    camera.bottom = camera.y+(camera_get_view_height(view_camera[camera.view_id]) / 2);
}

timeline_index = timeAA1Boss;
timeline_position = 0;
timeline_running = 1;
timeline_loop = 0;