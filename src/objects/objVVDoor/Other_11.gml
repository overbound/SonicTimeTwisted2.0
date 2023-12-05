/// @description  draw for state 1
var i = ceil(close_timer/16);
for(; i < segments; i++) {
    draw_sprite(sprite_index, 3,x,draw_bbox_top+16*i);
}
if (add_small_tile)
{
    draw_sprite(sprite_index, 5,x,draw_bbox_top+16*i);
}
if (close_timer mod 16 < 8) {
    draw_sprite(sprite_index, 1, x, bbox_bottom + 13);
} else {
    draw_sprite(sprite_index, 2, x, bbox_bottom + 13);
}
draw_sprite(sprite_index,4,x,draw_bbox_top+close_timer);

