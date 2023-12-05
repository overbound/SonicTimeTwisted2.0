var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
if image_index == 4 {
    image_speed = 0;
}
if bubble_id.visible {
    y = ystart+cos(objScreen.image_index);
    
    }else {
    y=ystart;
    stop_sound(sndBubblesShake);
    }

}
