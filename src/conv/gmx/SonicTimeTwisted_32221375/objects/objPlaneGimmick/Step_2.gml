var __b__;
__b__ = action_if_variable(active, true, 0);
if __b__
{
{
/// Plane Motion
with objPlayer {
   // clamping x instead of relying on speed, otherwise the player can fly off the plane
   other.x = clamp(other.x, x - 14, x + 4);
   if landed
   {
       rumble(rumble_short_weakest);
   }
   else
   {
      if other.y < y
      {
         other.y +=1;
         // emergency reposition of the plane if the player is clipping through
         if(y > other.y - 38)
         {
            other.y = ceil(y)+38;
         }
      }
   }
}

y = floor(y);


}
}
/// reset if player x is less than plane
if instance_exists(objLevel.player[0]) {
    if x-320 > objLevel.player[0].x {
        x = xstart;
        y = ystart;
    }
}
if in_view(view_current,128) { 
if not audio_is_playing(sndPropeller)
    play_sfx(sndPropeller, 4);
}

