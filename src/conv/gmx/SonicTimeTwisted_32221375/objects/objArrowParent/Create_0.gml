action_inherited();
reaction_script=player_reaction_harmful;
child=instance_create(x,y,objArrowChild);
hspeed=3;
remove=2;
step=0;
if objProgram.in_past == false {
    sprite_index=sprRRLaser;
}

