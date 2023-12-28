if (alarm[0] <= 0)
{
	/// Update camera position
	var ox, oy, view_yspeed;
	// define center offset
	ox = x-(camera_get_view_x(view_camera[view_id])+objScreen.width*0.5);
	oy = y-(camera_get_view_y(view_camera[view_id])+objScreen.height*0.5);
	if room == MM1 {
		ox +=88;
	} 
	// apply panning offsets camera cord reletive to center
	ox += (offset_x*sine[gravity_direction])+(offset_y*cosine[gravity_direction]);
	oy += (offset_x*cosine[gravity_direction])-(offset_y*sine[gravity_direction]);
	// define borders
	if abs(ox)>8 ox -= 8*sign(ox); else ox = 0;
	if not ground_mode {if abs(oy)>32 oy -= 32*sign(oy); else oy = 0;}
	// limit speed
	view_yspeed = min(6+abs(y-yprevious), 22);
	if abs(ox)>22 ox = 22*sign(ox);
	if abs(oy)>view_yspeed oy = view_yspeed*sign(oy);
	// horizontal movement
	if panning_hspeed>0
	{
		// move automatically
		if camera_get_view_x(view_camera[view_id])<left __view_set( e__VW.XView, view_id, min(camera_get_view_x(view_camera[view_id])+panning_hspeed, left) ); else
		if camera_get_view_x(view_camera[view_id])+objScreen.width>right __view_set( e__VW.XView, view_id, max(camera_get_view_x(view_camera[view_id])-panning_hspeed, right-objScreen.width) ); else
		panning_hspeed = 0;
	}
	else
	{
		// focus on player
		if ox<0 and camera_get_view_x(view_camera[view_id])>=left __view_set( e__VW.XView, view_id, max(camera_get_view_x(view_camera[view_id])+ox, left) );
		if ox>0 and camera_get_view_x(view_camera[view_id])+objScreen.width<=right __view_set( e__VW.XView, view_id, min(camera_get_view_x(view_camera[view_id])+ox, right-objScreen.width) );
	}
	// vertical movement
	if panning_vspeed>0
	{
		// move automatically
		if camera_get_view_y(view_camera[view_id])<top __view_set( e__VW.YView, view_id, min(camera_get_view_y(view_camera[view_id])+panning_vspeed, top) ); else
		if camera_get_view_y(view_camera[view_id])+objScreen.height>bottom __view_set( e__VW.YView, view_id, max(camera_get_view_y(view_camera[view_id])-panning_vspeed, bottom-objScreen.height) ); else
		panning_vspeed = 0;
	}
	else
	{
		// focus on player
		if oy<0 and camera_get_view_y(view_camera[view_id])>=top __view_set( e__VW.YView, view_id, max(camera_get_view_y(view_camera[view_id])+oy, top) );
		if oy>0 and camera_get_view_y(view_camera[view_id])+objScreen.height<=bottom __view_set( e__VW.YView, view_id, min(camera_get_view_y(view_camera[view_id])+oy, bottom-objScreen.height) );
	}

	// calculate xspeed only for reference
	xSpeed = x - xprevious;

	/// Screen Shake
	if shake {
		var amountx=-4+round(random(8)); 
		while ( camera_get_view_x(view_camera[view_id]) + amountx > right|| camera_get_view_x(view_camera[view_id]) + amountx < left) { amountx=-4+round(random(8)); }
		
		var amounty=-4+round(random(8)); 
		while ( camera_get_view_y(view_camera[view_id]) + amounty < top || camera_get_view_y(view_camera[view_id]) + amounty > bottom) { amounty=-4+round(random(8)); }
		   
			
			__view_set( e__VW.XView, 0, clamp(camera_get_view_x(view_camera[view_id]) + amountx, left, right - objScreen.width) );
			__view_set( e__VW.YView, 0, clamp(camera_get_view_y(view_camera[view_id]) + amounty, top, bottom - objScreen.height) );
			rumble(rumble_ground_shake);
		shake=false;
	}
}
