with (objFinalBossLaser) {
/// Render laser (beam)
draw_set_color(c_red);
draw_set_alpha(0.75);
draw_primitive_begin(pr_trianglestrip);
draw_vertex(floor(x+xOffset1Left), floor(y)+yOffset1Left);
draw_vertex(floor(x+xOffset1Right), floor(y)+yOffset1Right);
draw_vertex(floor(x2+xOffset2Left), floor(y2+yOffset2Left));
draw_vertex(floor(x2+xOffset2Right), floor(y2+yOffset2Right));
draw_primitive_end();
draw_set_color(c_white);
draw_set_alpha(1);

}
