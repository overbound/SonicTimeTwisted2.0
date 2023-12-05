action_inherited();
remove = 0;
angle = 0;
/// Create platforms
for (var i=0; i<3; i+=1)
{
    platform[i] = instance_create(xstart, ystart, objSolid);
    platform[i].sprite_index = sprTTPlatform;
    platform[i].visible = true;
    platform[i].depth = 1;
    platform[i].remove = 0;
    platform[i].through = true;
}

