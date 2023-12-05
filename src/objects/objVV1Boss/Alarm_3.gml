state = 4;
/// Setup attack
switch attack_state
{
case 0: // dashing left
    // get into position
    x = objVV1BossController.right+120;
    y = objVV1BossController.height-25;
    // animate
    sprite_index = sprMetalFlying;
    image_index = 1;
    // shield
    shield = instance_create(x+32*image_xscale, y, objVV1BossShield);
    shield.image_xscale = image_xscale;
    break;
case 1: // dashing right
    // get into position
    x = objVV1BossController.left-120;
    y = objVV1BossController.height-25;
    //x = 17352;
    //y = 1428;
    // animate
    sprite_index = sprMetalFlying;
    image_index = 1;
    image_xscale = 1;
    // shield
    shield = instance_create(x, y, objVV1BossShield);
    shield.image_xscale = image_xscale;
    break;
case 2: // go into background
    path_start(pathVV1BossToCenter, 4, 0, true);
    // turn off reaction
    reaction_script = -1;
    break;
}

