action_inherited();
reaction_script=player_reaction_knock_ufo;
remove=0;
hit_boss = false;
test =floor(random(2));
if test == 1 {
    x=objMetallixController.x+454;
    hspeed = -4;
} else { 
    x=objMetallixController.x-454;
    hspeed = 4;
}
y=objMetallixController.y-256+random(512);
alarm[0]=2000;

