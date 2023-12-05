var __b__;
__b__ = action_if_variable(player_id.character_id, 2, 0);
if !__b__
{
{
action_kill_object();
exit;
}
}
action_inherited();
/// Set animation
if hide {
    visible = false
    exit;
}
switch player_id.animation
{
case "idle": case "brake": case "look": case "crouch": case "push":
    visible = true;
    sprite_index = sprTailsEffect1;
    image_speed = 0.125;
    yoffset = 0;
    xoffset = 0;
    break;
case "boarding":
    visible = true;
    sprite_index = sprTailsEffect1;
    image_speed = 0.125;
    yoffset = -4;
    xoffset = 4*player_id.facing;
    break;
case "spin":
    visible = true;
    sprite_index = sprTailsEffect2;
    image_speed = 0.25;
    yoffset = 0;
    xoffset = 0;
    break;

case "spindash":
    visible = true;
    sprite_index = sprTailsEffect3;
    image_speed = 0.333;
    yoffset = 0;
    xoffset = 0;
    break;

case "flight": case "flight_end":
    visible = true;
    sprite_index = sprTailsEffect4;
    image_speed = 0.5;
    yoffset = 0;
    xoffset = 0;
    break;

default: visible = false;
}

// abort if not visible
if not visible exit;

// set facing
image_xscale = player_id.facing;

// set angle
switch player_id.state
{
case player_state_fall:
case player_state_fall_automatically:
    // rotate to movement direction if spinning
    if (player_id.animation!="spin") image_angle = player_id.angle; else
    if image_xscale image_angle = point_direction(0, 0, player_id.xspeed, player_id.yspeed); else
    image_angle = point_direction(player_id.xspeed, player_id.yspeed, 0, 0);
    break;

case player_state_stand:
    // match gravity angle
    image_angle = gravity_angle();
    break;

default:
    // match player's angle
    image_angle = player_id.angle;
}

// flashing
image_alpha = 1-((player_id.invulnerable div 4) mod 2);

//depth
depth = player_id.depth;

