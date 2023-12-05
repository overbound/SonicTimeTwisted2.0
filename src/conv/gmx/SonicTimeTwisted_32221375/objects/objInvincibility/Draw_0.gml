/// @description  Draw invincibility sparks
var c, s;
// fourth circle
c = cosine[angle2]*16;
s = sine[angle2]*16;
draw_sprite(sprMutekiSpark4, image_index, px[2]+c, py[2]-s);
draw_sprite(sprMutekiSpark4, image_index+5, px[2]-c, py[2]+s);
// third circle
draw_sprite(sprMutekiSpark3, image_index, px[1]-s, py[1]-c);
draw_sprite(sprMutekiSpark3, image_index+6, px[1]+s, py[1]+c);
// second circle
draw_sprite(sprMutekiSpark2, image_index, px[0]+c, py[0]-s);
draw_sprite(sprMutekiSpark2, image_index+7, px[0]-c, py[0]+s);
// first circle
c = cosine[angle]*16;
s = sine[angle]*16;
if (flip)
{
    draw_sprite(sprMutekiSpark1,image_index, x+c, y-s);
    draw_sprite(sprMutekiSpark1,image_index+5, x-c, y+s);
}
else
{
    draw_sprite(sprMutekiSpark1,image_index, x+s, y+c);
    draw_sprite(sprMutekiSpark1,image_index+5, x-s, y-c);
}

