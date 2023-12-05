/// @description  Render
var draw_color = draw_get_color();
draw_set_color(c_lime);
for (var node = 0; node < total_nodes; node++) {
    draw_line(node_x[ node ], node_y[ node ], node_x[ node + 1 ], node_y[ node + 1 ]);
}
draw_set_color(draw_color);
/*
var this_degree, this_distance, next_degree,  next_distance;
var draw_color = draw_get_color();
draw_set_color(c_lime);
for (var i = 0; i < total_nodes; i++) {
    this_degree = sine * i * degrees_per_node;
    this_distance = i * node_distance;
    next_degree = sine * (i + 1) * degrees_per_node;
    next_distance = (i + 1) * node_distance;
    draw_line(  xstart + dsin(this_degree) * this_distance,
                ystart + dcos(this_degree) * this_distance,
                xstart + dsin(next_degree) * next_distance,
                ystart + dcos(next_degree) * next_distance);
}
draw_set_color(draw_color);
*/
/*
for (var i = 0; i < total_nodes; i++) {
    draw_sprite_ext(sprite_index, 0,
        xstart + dsin(sine * (i * degrees_per_node)) * (i * sprite_height),  //11.25
        ystart + dcos(sine * (i * degrees_per_node)) * (i * sprite_height),
        1, 1, 
        dsin(sine * ((i + 1) * degrees_per_node)) * (largest_absolute_direction * 2), 
        image_blend, image_alpha);
}
*/

/* */
/*
var sine = dsin(image_index);
var draw_color = draw_get_color();
draw_set_color(c_lime);
var x1 = xstart;
var y1 = ystart;
var x2 = x1 + dsin(sine * degrees_per_node) * node_distance;
var y2 = y1 + dcos(sine * degrees_per_node) * node_distance;
draw_line(x1, y1, x2, y2);
for (var i = 1; i < total_nodes; i++) {
    x1 = x2;
    y1 = y2;
    x2 = x1 + dsin(sine * (i + 1) * degrees_per_node) * node_distance;
    y2 = y1 + dcos(sine * (i + 1) * degrees_per_node) * node_distance;
    draw_line(x1, y1, x2, y2);
}
draw_set_color(draw_color);
*/
/*
var this_degree, this_distance, next_degree,  next_distance;
var draw_color = draw_get_color();
draw_set_color(c_lime);
for (var i = 0; i < total_nodes; i++) {
    this_degree = sine * i * degrees_per_node;
    this_distance = i * node_distance;
    next_degree = sine * (i + 1) * degrees_per_node;
    next_distance = (i + 1) * node_distance;
    draw_line(  xstart + dsin(this_degree) * this_distance,
                ystart + dcos(this_degree) * this_distance,
                xstart + dsin(next_degree) * next_distance,
                ystart + dcos(next_degree) * next_distance);
}
draw_set_color(draw_color);
*/
/*
for (var i = 0; i < total_nodes; i++) {
    draw_sprite_ext(sprite_index, 0,
        xstart + dsin(sine * (i * degrees_per_node)) * (i * sprite_height),  //11.25
        ystart + dcos(sine * (i * degrees_per_node)) * (i * sprite_height),
        1, 1, 
        dsin(sine * ((i + 1) * degrees_per_node)) * (largest_absolute_direction * 2), 
        image_blend, image_alpha);
}
*/

/* */
/*  */
