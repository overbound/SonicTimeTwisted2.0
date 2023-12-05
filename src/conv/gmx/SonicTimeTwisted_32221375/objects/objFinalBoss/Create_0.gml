action_inherited();
remove=0;
state=0;
reaction_script=player_reaction_final_boss;
flame_index = 0;
face=instance_create(x,y,objFinalBossFace);
with face {
    parentId=other.id;
}
eyeTell = false;
arm=instance_create(x,y,objFinalBossArm);
with arm {
    xoffset=78;
    yoffset=180;
    parentId=other.id;
}

