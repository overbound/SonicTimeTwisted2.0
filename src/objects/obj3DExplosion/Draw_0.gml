/// @description  Render explosion
// sonic boom
draw_set_color(boom_blend);
draw_set_alpha(0.25);
draw_ellipse(x-radius, y-radius, x+radius, y+radius, false);
// explosion
draw_set_color(image_blend);
draw_set_alpha(image_alpha);
draw_self();
draw_billboard(24, 24);

