action_inherited();
reaction_script=player_reaction_squibot;
life=3;
image_index=0;
image_speed=0;
invulnerable=false;
if image_xscale == 1 {
    gun=instance_create(x+30,y-40,objSquibotGun);
    remove=1;
    with gun {
        parentId=other.id
        xoffset=30;
        yoffset=-40;
    }
} else {
    gun=instance_create(x-30,y-40,objSquibotGun);
    remove=1;
    with gun {
        parentId=other.id
        xoffset=-30;
        yoffset=-40;
    }
    
}

