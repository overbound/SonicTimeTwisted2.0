alarm[0]=12;
with instance_create(xx,yy,objTTPWave) { 
handle = other.id; 
xoffset=170;
yoffset=130;
}
with instance_create(xx,yy,objTTPWave) { 
handle = other.id; 
xoffset=170+other.separation_x+other.absolute_x*2;
yoffset=130;
}


