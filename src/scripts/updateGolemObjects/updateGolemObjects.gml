function updateGolemObjects(argument0) {
	// updatedGolemObjects
	with (argument0)
	{
	  posX += speedX;
	  posY += speedY;
	  posZ += speedZ;
  
	  speedY += _gravity;

	  var _mid_x = __view_get( e__VW.XView, 0 ) + (objScreen.width / 2);
	  var _mid_y = __view_get( e__VW.YView, 0 );
  
	  var _ratio = power(2, posZ / __view_get( e__VW.WView, 0 ));
  
	  image_xscale = _ratio;
	  image_yscale = _ratio;
  
	  x = floor(_mid_x + (posX - _mid_x) * _ratio);
	  y = floor(_mid_y + (posY - _mid_y) * _ratio);
	  if (object_index == objGolemHand)
	  {
	    if (!broken)
	    {
	      plat_speed = x - xprevious;
	    }
	  }
	  depth = 128 - posZ;
	}



}
