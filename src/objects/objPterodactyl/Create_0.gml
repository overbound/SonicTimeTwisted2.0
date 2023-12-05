action_inherited();
/// Initialize
hspeed = -2;
hsp=-2;
image_speed = 0;
image_index =0;
reaction_script = player_reaction_enemy;
frozen=false;
step=0;
fire=false;
remove = 1;
bomb[0]=instance_create(x,y,objPterodactylBomb);
bomb[1]=instance_create(x,y,objPterodactylBomb);
bomb[0].depth = -1;
bomb[1].depth = 1;


