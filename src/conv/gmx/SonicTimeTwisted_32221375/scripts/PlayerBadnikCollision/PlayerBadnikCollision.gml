/*
void PlayerBadnikCollision()
*/
if /* (!onGround) || */invincible > 0 || started == false || z < zground return false;
if z < zground+32{//32 {
    if jumping==true {
    
        zspeed =4;
        with argument0 { instance_destroy();}
        play_sfx(sndPop,0);
        rumble(rumble_short_strong);
    
    }
else if jumping==false  && invincible == 0{
    var a;
      
      a = point_direction(argument0.x, argument0.y, x, y);
      bounce_direction = a;
      bounce_timer = 40;
      move_speed = 4;
      hit=true;
        
      zspeed = 8;
      onGround = false;
      invincible=120;
      
      ssplayer_hit()
    }
}
