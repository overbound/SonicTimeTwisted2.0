/// @description  Initial setup
degrees_per_node = largest_absolute_direction / total_nodes;
node_x[ 0 ] = xstart;
node_y[ 0 ] = ystart;
for (var node = 1; node < total_nodes + 1; node++) {
    node_x[ node ] = xstart;
    node_y[ node ] = ystart + (node * node_distance);
}
x = node_x[ total_nodes ];
y = node_y[ total_nodes ];

