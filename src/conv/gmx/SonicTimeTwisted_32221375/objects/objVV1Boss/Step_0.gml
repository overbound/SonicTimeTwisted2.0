/// @description  State machine
switch state
{
case -1: // defeated
    // rotate
    image_angle -= 33+(33/100);
    // have explosion follow
    with explosion {x = other.x; y = other.y;}
    break;
case 0: // moving into position
    if (path_position==1) {state = 1; offset = 0;}
    break;
case 1: // just floating
    y += cos(offset)*0.5;
    offset += 0.0625;
    image_index = 0;
    break;
case 2: // laughing
    if !audio_is_playing(sndMetalLaugh)
        play_sfx(sndMetalLaugh,1);
    y += cos(offset)*0.5;
    offset += 0.25;
    image_index = 2;
    break;
case 3: // moving off-screen
    x += 2;
    break;
case 4: // attacking
    switch attack_state
    {
    case 0: // dashing left
        x -= 6;
        shield.x = other.x-34*image_xscale
        // if we're far enough off-screen
        if x<objVV1BossController.left-120 //17592
        {
            // return to start
            path_start(pathVV1BossToNeutral, 4, 0, true);
            // animate
            sprite_index = sprMetalIdle;
            image_index = 0;
            // remove shield
            with shield instance_destroy();
            shield = noone;
            // advance attack pattern
            state = 0;
            attack_state = 1;
            alarm[1] = 120;
        }
        break;
    case 1: // dashing right
        x += 6;
        shield.x = other.x-42*image_xscale;
        // if we're far enough off-screen
        if x>objVV1BossController.right+120 //18232
        {
            // return to start
            path_start(pathVV1BossToNeutral, 4, 0, true);
            // animate
            sprite_index = sprMetalIdle;
            image_index = 0;
            image_xscale = -1;
            // remove shield
            with shield instance_destroy();
            shield = noone;
            // advance attack pattern
            state = 0;
            attack_state = 2;
            alarm[1] = 120;
        }
        break;
    case 2: // go into background
        if image_xscale<-0.4
        {
            // shrink
            image_xscale += 0.008;
            image_yscale = -image_xscale;
        }
        else if (path_position==1)
        {
            // target platform the player is standing on
            
            if instance_exists(objLevel.player[0])
            target = instance_nearest(objLevel.player[0].x, objLevel.player[0].y, objVVPlatform);
            // advance attack pattern
            attack_state = 3;
            // animate
            sprite_index = sprMetalFacing;
            image_speed = 0.5;
            image_xscale = 0.2;
            image_yscale = 0.2;
        }
        break;
    case 3: // attack platform
        if !instance_exists(target) exit;
        move_towards_point(target.x, target.y, 4);
        // if we've grown fully
        if image_xscale>=1
        {
            // stop moving
            speed = 0;
            // advance attack pattern
            attack_state = 4;
            target = noone;
            // animate
            image_xscale = 1;
            image_yscale = 1;
        }
        else
        {
            // grow
            image_xscale += 0.008;
            image_yscale = image_xscale;
            // set reaction
            if image_xscale>0.25 and image_xscale<0.65 reaction_script = player_reaction_vv1_boss; else
            reaction_script = -1;
            // destroy platform
            if image_xscale>0.65 and (target2==noone)
            {
                target2 = instance_nearest(x, y, objVVPlatform);
                with target2
                {
                    // send flying
                    instance_create(x, y, objVV1BossFlyingPlatform);
                    y += 200;
                    // sound
                    play_sfx(sndCollapse, 1);
                }
            }
        }
        break;
    
    case 4:
        y += 6;
        // if we're far enough off-screen
        if y>objVV1BossController.bottom+120 //1748
        {
            // return to start
            path_start(pathVV1BossToNeutral, 4, 0, true);
            depth = 0;
            // animate
            sprite_index = sprMetalIdle;
            image_index = 0;
            image_speed = 0;
            image_xscale = -1;
            // enable reaction
            reaction_script = player_reaction_vv1_boss;
            // advance attack pattern
            state = 0;
            attack_state = 0;
            alarm[1] = 120;
        }
        break;
    }
    break;
}

