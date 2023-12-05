action_inherited();
reaction_script = player_reaction_AA_shock_bumper;
/// Create shockers
shocker[0] = instance_create(x+32, y, objAAShocker);
shocker[0].image_angle = -90;
shocker[1] = instance_create(x-32, y, objAAShocker);
shocker[1].image_angle = 90;

