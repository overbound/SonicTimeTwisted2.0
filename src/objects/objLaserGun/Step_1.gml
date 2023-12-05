if(laser == noone)
{
    laser = instance_create(x,y,objLaserShot);
    laser.laser_height = laser_height;
    laser.gun_id = id;
}

