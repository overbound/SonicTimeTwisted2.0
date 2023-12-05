/// @description  player_reaction_wallbot(local_id)
/// @param local_id
function player_reaction_wallbot(argument0) {
	var bonus_score;
	// ignore if already hit
	if argument0.alarm[0] return false;
	// if not spinning or invincible
	if !(abs(xspeed)>=6 && character_id==3)
	if argument0.invulnerable or not (spinning or instashield or spindashing or invincibility or superform or state==player_state_glide)
	{
	    // abort if already hit
	    if invulnerable or (state==player_state_hurt) return false;
	    // take hit
	    player_hit(sign(x-argument0.x), sndHurt);
	    // hard collision found
	    return true;
	}
	// get bounce direction
	bounce_direction = angle_wrap(point_direction(argument0.x, argument0.y, x, y)-gravity_angle());
	// states and flags
	rolling_jump = false;
	jump_action = true;
	// movement and collision
	xspeed = cosine[bounce_direction]*2;
	yspeed = -sine[bounce_direction]*2;
	// character values
	if character_id==3 glide_falling = false;
	// move outside
	while collision_box(offset_x, offset_y, (mask_rotation mod 180), argument0) {x += sign(xspeed); y += sign(yspeed);}
	// curl if gliding
	if state==player_state_glide
	{
	    // animate
	    animation_new = "spin";
	    timeline_speed = 1;
	    // states and flags
	    state = player_state_fall;
	    spinning = true;
	}
	// hit boss
	if argument0.life>0
	{
	    argument0.life -= 1;
	    argument0.invulnerable=true;
	    argument0.alarm[0] = 15;
	    if argument0.life<=0 {
	        with argument0 instance_destroy();
	        player_add_score(500);
	    }
	}
	// sound
	play_sfx(sndBossHit, 2);
	// hard collision found
	return true;



}
