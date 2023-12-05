action_inherited();
remove = 1;
/// Create trigger points
for (var i=0; i<12; i+=1)
{
    if (i>7) trigger[i] = instance_create(x+63.5+(i mod 2)*63.5, y+(i div 4)*32, objField); else
    trigger[i] = instance_create(x+(i mod 4)*63.5, y+(i div 4)*32, objField);
    trigger[i].image_xscale = 3.96875;
    trigger[i].image_yscale = 2;
    trigger[i].reaction_script = player_reaction_VV_bushes;
    trigger[i].enabled = false;
    trigger[i].collision = false;
    if debug_mode trigger[i].visible = true;
}

