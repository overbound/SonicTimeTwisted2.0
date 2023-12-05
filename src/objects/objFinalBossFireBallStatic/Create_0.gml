action_inherited();
image_speed = 0;
image_index=4;
image_xscale=1;
image_yscale=1;
speed=5;
direction=180;
remove=0;
reaction_script=player_reaction_fireball;
lighting_index=0;
if in_view(view_current,32) {
    instance_destroy();
}

