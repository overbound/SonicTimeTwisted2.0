/// @description  Fire Gun
if destroyed exit;
if !audio_is_playing(sndEggWalkerFire) {
        
    play_sfx(sndEggWalkerFire, 2);
        
}
for(i = 0; i < 2; i+=1){
    
    with gunHandle[i] {
        laser.state = 1
        laser.image_angle=image_angle;
    }
}

alarm[1]=400;

