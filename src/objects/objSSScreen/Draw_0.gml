draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,.5);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprSSScreenLines,-0,x,y,1,1,0,c_white,.5);
gpu_set_blendmode(bm_normal);
var p;
p = random(128) - 64
gpu_set_blendmode(bm_add)
draw_line_color(x, y+88, x - p , y + 40, c_lime, c_green)
draw_line_color(x, y+88, x + p, y + 40, c_lime, c_green) 
gpu_set_blendmode(bm_normal)

