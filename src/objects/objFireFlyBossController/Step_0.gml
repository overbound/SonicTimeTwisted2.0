switch state {
case 0:
    with objLevel.player[0] {
    
        if x > other.x-16 {
            other.state=1;
            stop_all_music(false);
        }
    
    }
break;
case 1:
    instance_activate_object(objFireFly);
    with objFireFly state=1;
    set_boss_music(room);
    play_boss_intro(objMusic.bossIntroAsset, 0);
    state=2;
break;
}

