action_inherited();
/// Set offset
switch player_id.animation
{
case "spin":
    break;
case "swing":
    x -= sine[player_id.angle]*4-(7*player_id.facing);
    y -= cosine[player_id.angle]*4-20;
    break;
default:
    x -= sine[player_id.angle]*4;
    y -= cosine[player_id.angle]*4;
}

image_xscale = player_id.facing;
