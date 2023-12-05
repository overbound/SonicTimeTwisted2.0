if (timer == 64)
{
  image_speed = 1/2;
}
if (timer > 0)
{
  timer -= 1;
  if instance_exists(objLevel.player[0])
        x = floor(objLevel.player[0].x);
  y = objGolem.floor_level - 16;
}

