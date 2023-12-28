if (started)
{
{
/// Controls

if !hit {

if input_check_pressed(cACTION) and onGround {

      jumping = true;
      zspeed = jump_force;
      onGround = false;
      play_sfx(sndJump,0);    

}

if jumping == true && jump_release == false{

        jump_force +=.25;

    if input_check_released(cACTION) {
    
        jump_release = true;
    
    } else if jump_force >= 6.5 {
    
         jump_release = true;
         jump_force=6.5;
         
    }
    
    zspeed = jump_force;

}

// X - gyroscope
if (objProgram.inputManager.analog_applied || (objProgram.inputManager.is_touchscreen && objProgram.inputManager.gyroinss && objProgram.inputManager.gyromode)) {
    var analog_x = objProgram.inputManager.analog_x;
    xaxis = sign(analog_x);
    
    direction_multiplier = -1.5*abs(analog_x);
    // give some leeway, allow to accelerate while running ALMOST straight
    if (abs(analog_x) > 0.1) {
        decel = max(0.1, analog_x/20.0);
    }
    else
    {
        decel = 0;
    }
} else {
    if (input_check(cLEFT)) xaxis = -1;
    else if (input_check(cRIGHT)) xaxis = 1;
    else xaxis = 0;
    
    direction_multiplier = -1.5;
    if (xaxis != 0) {
        decel = 0.1;
    }
    else
    {
        decel = 0;
    }
}
// Y - analog controls

if (objProgram.inputManager.analog_applied) {
    var analog_y = objProgram.inputManager.analog_y;
    
    if (analog_current_yaxis != 0) {
        if (xaxis == 0) && (analog_y == 0) {
            analog_current_yaxis = 0;
        }
    } else {
        analog_current_yaxis = sign(analog_y);
        if (analog_current_yaxis) {
            if (xaxis != 0) {
                analog_current_yaxis = -1;   
            }
        }
        if (analog_current_yaxis > 0) {
            analog_current_yaxis = 4;    
        }
    }
    yaxis = analog_current_yaxis;
    
    max_move_speed = 8*abs(analog_y);
} else {
    if (input_check(cUP)) yaxis = -1;
    else if (input_check(cDOWN)) yaxis = 4;
    else yaxis = 0;
    
    max_move_speed = 8;
}

}

///Movement

var xmove, ymove, f;

if (bump_radius < max_radius)
{
  bump_radius = bump_radius + (max_radius - bump_radius) * 0.25;
}

with(landing_tracker)
{
    if(!place_meeting(x, y, objTrack))
    {
        other.onGround = false;
        other.noTrack = true;
    }
    else
    {
        other.noTrack = false;
    }
}

move_direction += xaxis * direction_multiplier;

if (bounce_timer)
{
  bounce_timer -= 1;
  xmove = cos(degtorad(bounce_direction)) * move_speed;
  ymove = -sin(degtorad(bounce_direction)) * move_speed;
}
else
{
  move_speed += yaxis * -0.1;
  move_speed = max(move_speed, -2);
  if move_speed > max_move_speed {
    move_speed -= .25;
  }
  
  xmove = cos(degtorad(move_direction)) * move_speed;
  ymove = -sin(degtorad(move_direction)) * move_speed;
}

if (bounce_timer)
{
  f = 0.1;
}
else
if (yaxis == 0)
{
    f = 0.1;
}
else
{
    f = decel;
}

if (move_speed > f) move_speed -= f;
else if (move_speed < -f) move_speed += f;
else move_speed = 0;

x += xmove;
y += ymove;



var b;

b = PlayerCollision();

if (b)
{
  move_speed *= 0.95;
}

camera_set_view_pos(view_camera[0], x - (objScreen.width / 2), y - (objScreen.height / 2));

image_angle = move_direction;
__view_set( e__VW.Angle, 0, 90 - move_direction );

landing_tracker.x = x;
landing_tracker.y = y;

/// set depth
depth = min(2000,distance_to_object(objSSCamera)/20);

depth1= depth;

}
}
/// track position
PlayerUpdateRacerProgress();

/// Landing
if (!onGround)
{
    zspeed-=gravity_force;
    z += zspeed

  if (z <= radius)
  {
    if (z >= 8 and !noTrack)
    {
      z = radius;
      zspeed = 0;
      onGround = true;
      hit=false;
      bump_radius = 2;
      jumping = false;
      jump_release=false;
      jump_force =4;
      
      if closing > 0 {
      if objGameData.character_id[0] == 1 {
        sprite_index=sprSonicSSEnd;
        }
      else if objGameData.character_id[0] == 2 {
        sprite_index=sprTailsSSEnd;
      } else sprite_index=sprKnucklesSSEnd;
      
        image_speed = .25;
      }
      
        if kill > 0 && alarm[0] == -1 {
    
            alarm[0]=30;
    
        }
    }
    else {
    
    if (z <= -1500)
    {
    
        if kill < 1 {
            objSSMessages.alarm[1] = 30;
            kill = 2;
        }
        if alarm[0] = -1 {
            
            alarm[0]=30;
            exit;
      }
    }
    }
  }

  zspeed -= 0.2;
  zspeed = max(zspeed, -8);
}

