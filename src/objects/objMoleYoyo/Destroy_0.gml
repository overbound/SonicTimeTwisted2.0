action_inherited();
/// Release yoyo
with yoyo
{
    visible = true;
    vspeed = -2;
    gravity = 0.21875;
    remove = 2;
    reaction_script = -1;
    if other.yoyo_length>0 image_speed = 1;
}

