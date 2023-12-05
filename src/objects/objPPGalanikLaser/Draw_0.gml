/// @description  Render laser (beam)
/// @param beam
draw_set_color(c_red);
draw_set_alpha(0.75);
draw_primitive_begin(pr_trianglestrip);
draw_vertex(floor(x+xOffset1Left), floor(y)+yOriginOffset);
draw_vertex(floor(x+xOffset1Right), floor(y)+yOriginOffset);
draw_vertex(floor(x2+xOffset2Left), floor(y+yoffset));
draw_vertex(floor(x2+xOffset2Right), floor(y+yoffset));
draw_primitive_end();
draw_set_color(c_white);
draw_set_alpha(1);
//draw_self();

