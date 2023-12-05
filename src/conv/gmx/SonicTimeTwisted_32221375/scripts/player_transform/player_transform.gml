/// @description  player_transform(flag?)
/// @param flag?
// transform or de-transform?
if argument0
{
    // set superform counter
    superform = 1;
    // setup animation based on character
    switch character_id
    {
    case 1: // sonic
        animation_table = objResources.anim_sonic_super;
        break;
    }
}
else
{
    // clear states
    superform = -1;
    // reveal shield
    with shield visible = true;
    // setup animation based on character
    switch character_id
    {
    case 1: // sonic
        animation_table = objResources.anim_sonic;
        animation_reset = true;
        break;
    }
}
// reset physics
player_reset_physics();
