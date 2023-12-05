var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
if in_view(view_current,0) {
    play_sfx(sndBombLaunch,4);
    
    with instance_create(x,y-20,objFireball) {
    direction = 120;
    speed = 3.25;
    }
    
    with instance_create(x,y-20,objFireball) {
    direction = 60;
    speed = 3.25;
    }
    
    with instance_create(x,y-20,objFireball) {
    direction = 90;
    speed = 4;
    }
}
    alarm[0]=240;

}
