with (objRockStairs) {
if fall {
    if ystart+256 > y {
    
        yreal +=0.5;
    
    } else yreal = ystart+256
}
y=floor(yreal);
for( i = 0; i < 4; i+=1 ) {
with block[i] {
    x = other.x+xoffset;
    y = other.y+yoffset;
}
}


}
