angle=0;
distance=0;
remove=2;
xCameraOffset=0;
UFO[1] = instance_create(lengthdir_x(x-distance,angle),lengthdir_y(y-distance,angle),objUFO); UFO[1].offset=0; UFO[1].leadId=id;
UFO[2] = instance_create(lengthdir_x(x-distance,angle+60),lengthdir_y(y-distance,angle+90),objUFO); UFO[2].offset=90; UFO[2].leadId=id;
UFO[3] = instance_create(lengthdir_x(x-distance,angle+120),lengthdir_y(y-distance,angle+180),objUFO); UFO[3].offset=180; UFO[3].leadId=id;
UFO[4] = instance_create(lengthdir_x(x-distance,angle+180),lengthdir_y(y-distance,angle+270),objUFO); UFO[4].offset=270; UFO[4].leadId=id;


