action_inherited();
/// Initialize
image_speed = .25;
offscreen_enabled = true;
// states and flags
state = 0;
bouncing = false;
image_xscale = -1;
// other
turning = 0;
turning_point = 0;
timer = 16;
flash_color = make_color_rgb(255, 72, 0);
// segments
for (var i=0; i<3; i+=1) {
segment[i] = instance_create(x, y-2, objDragonFlySegment);
with segment[i]{
parent_id = id; 
depth += i;
bomboffset =4;
bomb = instance_create(x,y+bomboffset,objDragonFlyBomb);
bomb.depth = depth +1;
}
}
segment[0].offset = 14;
segment[1].offset = 28;
segment[2].offset = 42;
player_reaction_script = player_reaction_catakiller;
if objProgram.in_past
    sprite_index = sprDragonFlyHeadPast;

