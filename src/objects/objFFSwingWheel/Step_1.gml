/// @description  Swing platforms
// calculate angle
angle = angle_wrap(angle + 1);
// apply angle
for (var i=0; i<3; i+=1)
{
    platform[i].x = xstart + floor(sine[angle_wrap(angle + (i * 120))] * 72);
    platform[i].y = ystart + floor(cosine[angle_wrap(angle + (i * 120))] * 72);
}

