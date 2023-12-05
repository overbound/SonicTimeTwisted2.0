action_inherited();
/// Initialize
reaction_script = player_reaction_AA_target;
remove = 0;
// swing values
angle = 0;
turn_direction = 0;
// swing platform
target_id = instance_create(x, y, objSolid);
target_id.sprite_index = sprAASwing;
target_id.visible = true;
target_id.remove = 0;
target_id.through = true;

