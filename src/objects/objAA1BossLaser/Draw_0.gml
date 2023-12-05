var __b__;
__b__ = action_if_variable(pattern, 2, 0);
if __b__
{
/// Render laser (spread)
draw_set_color(image_blend);
draw_set_alpha(image_alpha);
draw_primitive_begin(pr_trianglestrip);
draw_vertex(floor(x), floor(y)-1);
draw_vertex(floor(x)+3, floor(y)+2);
draw_vertex(floor(ox-3-(16*image_xscale)), floor(oy-1.5-(16*image_xscale)*0.5));
draw_vertex(floor(ox+3+(16*image_xscale)), floor(oy+1.5+(16*image_xscale)*0.5));
draw_primitive_end();
draw_set_color(c_white);
draw_set_alpha(1);

}
else
{
/// Render laser (beam)
draw_set_color(image_blend);
draw_set_alpha(image_alpha);
draw_primitive_begin(pr_trianglestrip);
draw_vertex(floor(x), floor(y)-1);
draw_vertex(floor(x)+3, floor(y)+2);
draw_vertex(floor(ox)-3, floor(oy)-1.5);
draw_vertex(floor(ox)+3, floor(oy)+1.5);
draw_primitive_end();
draw_set_color(c_white);
draw_set_alpha(1);

}
