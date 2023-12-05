/// @description  run character animations

switch objGameData.character_id[0] {

    case 1:
        SonicSpecialAnimation();
    break;
    
    case 2:
        TailsSpecialAnimation();
    break;
    
    case 3:
        KnucklesSpecialAnimation();
    break;

}

// invincible

if invincible > 0 {
invincible -=1

visible = !visible;

}
else visible = true;

/// region activation
// placing it here so that it plays at step end
if (alarm[1] == 0)
{
    instance_deactivate_all(true);
    instance_activate_object(objProgram);
    instance_activate_object(objSSLevel);
    instance_activate_object(objGameData);
    instance_activate_object(objResources);
    instance_activate_object(objMusic);
    instance_activate_object(objSSMessages);
    instance_activate_object(objSSHud);
    instance_activate_object(objScreen);
    instance_activate_object(objSSCamera);
    instance_activate_object(objTransition);
    instance_activate_object(objTrack);
    instance_activate_object(objSSMetalSonic);
    instance_activate_object(objInput);
    instance_activate_object(objInputHelp);
    instance_activate_object(objMenu);
    instance_activate_object(objSSPlayerLandingTracker);
    instance_activate_region(x-1408,y-1408,2816,2816,true);
    //instance_activate_region(x-1536,y-1536,3072,3072,true);
    alarm[1] = 2;
}

