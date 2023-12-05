/// @description  draw for state 2
draw_sprite(sprite_index, 4,x,draw_bbox_top);
var i = 1;
for(; i < segments; i++) {
    draw_sprite(sprite_index, 3,x,draw_bbox_top+16*i);
}
if (add_small_tile)
{
    draw_sprite(sprite_index, 5,x,draw_bbox_top+16*i);
}
draw_sprite(sprite_index, 0, x, bbox_bottom + 13);

