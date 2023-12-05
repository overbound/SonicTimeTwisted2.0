var __b__;
__b__ = action_if_variable(objProgram.spawn_tag, 0, 0);
if !__b__
{
{
was_removed = true;
action_kill_object();
exit;
}
}
action_inherited();
/// Initialize
// states and flags
state = 0;
// boss object
boss = instance_create(426, 230, objAA1Boss);
// moving platforms
plat[0] = instance_create(256, 192, objAA1BossFloor);
plat[0].hspeed = -4.5;
plat[0].image_xscale = -1;
plat[1] = instance_create(512, 320, objAA1BossFloor);
plat[1].hspeed = -4.5;
plat[1].image_xscale = -1;
// boss theme
set_boss_music(room);
play_boss_intro(objMusic.bossIntroAsset, 0);
// replace background
with objAAFutureBack instance_destroy();
with objParallax instance_destroy();
if objProgram.in_past
    background=instance_create(0, 0, objAA1BossPastBack);
    else background=instance_create(0, 0, objAA1BossFutureBack);
    
for (var i=0; i<4; i+=1) instance_create(i*256, 192+(i*128), objAA1BossFloorBack);
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
    camera.left = camera.x-(__view_get( e__VW.WView, camera.view_id )*0.5);
    camera.right = camera.x+(__view_get( e__VW.WView, camera.view_id )*0.5);
    camera.top = camera.y-(__view_get( e__VW.HView, camera.view_id )*0.5);
    camera.bottom = camera.y+(__view_get( e__VW.HView, camera.view_id )*0.5);
}

action_timeline_set(timeAA1Boss, 0, 0, 0);
