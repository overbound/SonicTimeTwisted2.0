with instance_create(x,y+4,objSpinFlame) {
    emmitId =  other.id;
    hspeed -=1;
    depth=1*sign(other.offset)
    
    }
    
with instance_create(x,y+4,objSpinFlame) {
    emmitId =  other.id;
    hspeed +=1;
    depth=1*sign(other.offset)*-1;
    }
    
    alarm[0]=6;
    if !audio_is_playing(sndFireBlow)
        play_sfx(sndFireBlow,1);

