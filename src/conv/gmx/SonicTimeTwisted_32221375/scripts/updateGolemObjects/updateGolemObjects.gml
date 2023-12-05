// updatedGolemObjects
with (argument0)
{
  posX += speedX;
  posY += speedY;
  posZ += speedZ;
  
  speedY += _gravity;
  var ratio, midX, midY;
  midX = __view_get( e__VW.XView, 0 ) + 213;
  midY = __view_get( e__VW.YView, 0 );
  
  ratio = power(2, posZ / __view_get( e__VW.WView, 0 ));
  
  image_xscale = ratio;
  image_yscale = ratio;
  
  x = floor(midX + (posX - midX) * ratio);
  y = floor(midY + (posY - midY) * ratio);
  if (object_index == objGolemHand)
  {
    if (!broken)
    {
      plat_speed = x - xprevious;
    }
  }
  depth = 128 - posZ;
}
