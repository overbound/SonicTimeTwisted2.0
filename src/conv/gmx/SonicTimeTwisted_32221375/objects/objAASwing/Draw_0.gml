/// @description  Render
var angle;
draw_sprite(sprAASwingBase, 0, xstart, ystart);
for (var node = 0; node < total_nodes; node++) {
    angle = point_direction(node_x[ node ], node_y[ node ], node_x[ node + 1 ], node_y[ node + 1]) + 90;
    draw_sprite_ext(sprAASwingVine, 0, node_x[ node ], node_y[ node ], 1, 1, angle, image_blend, image_alpha);
}
if active == false 
    draw_sprite(sprAASwingPole, 0, x, y);

