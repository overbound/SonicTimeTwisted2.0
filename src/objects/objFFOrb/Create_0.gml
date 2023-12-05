action_inherited();
reaction_script = player_reaction_FF_orb;
force = 13.5;
rotation_speed = 5;
offset = 40;
/// Create player data
var i;
for (i=0; i<2; i+=1)
{
    player_id[i] = noone;
    angle[i] = 0;
    z_pos[i] = 0;
    z_depth[i] = 0;
}
image_xscale=.275;
image_yscale=.275;

event_user(0);

