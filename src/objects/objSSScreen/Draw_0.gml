draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,.5);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprSSScreenLines,-0,x,y,1,1,0,c_white,.5);
draw_set_blend_mode(bm_normal);
var p;
p = random(128) - 64
draw_set_blend_mode(bm_add)
draw_line_color(x, y+88, x - p , y + 40, c_lime, c_green)
draw_line_color(x, y+88, x + p, y + 40, c_lime, c_green) 
draw_set_blend_mode(bm_normal)

