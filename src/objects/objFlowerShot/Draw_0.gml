/// @description  Draw Self
draw_self();

if (frozen)
{
	/// Render ice block
	// get offset from time
	var offset = (-1+(((90-alarm[2]) div 4) mod 2)*2)*(alarm[2]<45);
	// draw ice block
	draw_sprite(sprShieldIceBlock, 0, x+offset, y);

}
