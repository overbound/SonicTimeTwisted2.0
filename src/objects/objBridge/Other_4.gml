var __b__;
__b__ = action_if_variable(total_nodes, 0, 2);
if __b__
{
/// Create bridge nodes
for (i=0; i<total_nodes; i+=1)
{
    node[i] = instance_create(x+sprite_width*i, y, objSolid);
    node[i].sprite_index = sprite_index;
    node[i].visible = true;
    node[i].through = true;
    node[i].tension = 0;
    node[i].tension_interpolated = 0;
    node[i].depth = -10;
}

}
