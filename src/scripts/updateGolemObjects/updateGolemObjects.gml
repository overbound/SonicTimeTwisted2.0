function updateGolemObjects(argument0) {
	// updatedGolemObjects
	with (argument0)
	{
	  posX += speedX;
	  posY += speedY;
	  posZ += speedZ;
  
	  speedY += _gravity;

	  var _mid_x = camera_get_view_x(view_camera[view_current]) + (objScreen.width / 2);
	  var _mid_y = camera_get_view_y(view_camera[view_current]);
  
	  var _ratio = power(2, posZ / objScreen.width);
  
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
