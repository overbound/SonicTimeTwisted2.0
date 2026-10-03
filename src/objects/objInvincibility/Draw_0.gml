/// @description  Draw invincibility sparks
var c, s;
// fourth circle
c = cosine[angle2]*20;
s = sine[angle2]*20;
shield_draw_glow(sprMutekiSpark4, image_index, px[2]+c, py[2]-s, 1, 1, 0, c_white, 1, 0.8);
draw_sprite(sprMutekiSpark4, image_index, px[2]+c, py[2]-s);
shield_draw_glow(sprMutekiSpark4, image_index+5, px[2]-c, py[2]+s, 1, 1, 0, c_white, 1, 0.8);
draw_sprite(sprMutekiSpark4, image_index+5, px[2]-c, py[2]+s);
// third circle
shield_draw_glow(sprMutekiSpark3, image_index, px[1]-s, py[1]-c, 1, 1, 0, c_white, 1, 0.8);
draw_sprite(sprMutekiSpark3, image_index, px[1]-s, py[1]-c);
shield_draw_glow(sprMutekiSpark3, image_index+6, px[1]+s, py[1]+c, 1, 1, 0, c_white, 1, 0.8);
draw_sprite(sprMutekiSpark3, image_index+6, px[1]+s, py[1]+c);
// second circle
shield_draw_glow(sprMutekiSpark2, image_index, px[0]+c, py[0]-s, 1, 1, 0, c_white, 1, 0.8);
draw_sprite(sprMutekiSpark2, image_index, px[0]+c, py[0]-s);
shield_draw_glow(sprMutekiSpark2, image_index+7, px[0]-c, py[0]+s, 1, 1, 0, c_white, 1, 0.8);
draw_sprite(sprMutekiSpark2, image_index+7, px[0]-c, py[0]+s);
// first circle
c = cosine[angle]*20;
s = sine[angle]*20;
if (flip)
{
    shield_draw_glow(sprMutekiSpark1, image_index, x+c, y-s, 1, 1, 0, c_white, 1, 0.8);
    draw_sprite(sprMutekiSpark1,image_index, x+c, y-s);
    shield_draw_glow(sprMutekiSpark1, image_index+5, x-c, y+s, 1, 1, 0, c_white, 1, 0.8);
    draw_sprite(sprMutekiSpark1, image_index+5, x-c, y+s);
}
else
{
    shield_draw_glow(sprMutekiSpark1, image_index, x+s, y+c, 1, 1, 0, c_white, 1, 0.8);
    draw_sprite(sprMutekiSpark1, image_index, x+s, y+c);
    shield_draw_glow(sprMutekiSpark1, image_index+5, x-s, y-c, 1, 1, 0, c_white, 1, 0.8);
    draw_sprite(sprMutekiSpark1, image_index+5, x-s, y-c);
}
