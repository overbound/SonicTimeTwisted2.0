action_inherited();
reaction_script=player_reaction_paddle_switch;
with instance_create(x,y-24,objSwitchButton) { parentId = other.id; }
with instance_create(x,y+24,objSwitchButton) { parentId = other.id; image_yscale=-1; }

