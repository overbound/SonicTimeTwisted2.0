draw_shadow(8);
draw_billboard(8, 8);
if instance_exists(objSSPlayer)
    if depth == objSSPlayer.depth {
        visible = false;
    } else visible = true;

