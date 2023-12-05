function MegaTrooperShoulderNew(argument0, argument1, argument2) {
	/*
	GMInstance MegaTrooperShoulderNew(double x, double y, int xflip)
	*/
	with (instance_create(argument0, argument1, objMegaTrooperShoulder))
	{
	  image_xscale = argument2;
  
	  return id;
	}



}
