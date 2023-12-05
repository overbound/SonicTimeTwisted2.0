action_inherited();
reaction_script=player_reaction_robo_rex;
life=3;
invulnerable=false;
image_speed=0;image_index=0;
image_speed=0;
image_index=0;
head=instance_create(x-30,y-60,objRoboRexHead);
remove=1;
with head {
    parentId=other.id
    xoffset=-30;
    yoffset=-60;
}
foot=instance_create(x-28,y+28,objRoboRexFoot);
with foot {
    parentId=other.id
    xoffset=-28;
    yoffset=+28;
}

