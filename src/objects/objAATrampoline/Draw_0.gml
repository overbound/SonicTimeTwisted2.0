/// @description  Render trampoline
var w1, w2, h, t, d, j, k;
// setup
w1 = ox-bbox_left;
w2 = ox-bbox_right;
h = oy-bbox_top;
// trampoline line
draw_set_color(c_yellow);
for (t=0; t<1; t+=0.2)
{
    d = t+0.2;
    j = t*t;
    k = d*d;
    draw_line_width(bbox_left+w1*j, bbox_top+h*t, bbox_left+w1*k, bbox_top+h*d, 2);
    draw_line_width(bbox_right+w2*j, bbox_top+h*t, bbox_right+w2*k, bbox_top+h*d, 2);
}
// trampoline stands
draw_sprite(sprAATrampoline, 0, bbox_left, y);
draw_sprite(sprAATrampoline, 0, bbox_right, y);

