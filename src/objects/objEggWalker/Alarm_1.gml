/// @description  Prep Fire
if destroyed exit;

alarm[2]=150;
play_sfx(sndEggWalkerCharge, 2);

with objLevel.player[0] {
if !(camera.left > other.x+128 && other.image_xscale == 1  && objEggWalkerBossController.state > 1) && !(camera.right < other.x-128 && other.image_xscale == -1 && objEggWalkerBossController.state > 1 ){


    for(i = 0; i < 2; i+=1){
    
    other.gunHandle[i].coverId.alarm[0]=165;
    other.gunHandle[i].alarm[0]=165;
    
    }

}
}

