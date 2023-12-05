var __b__;
__b__ = action_if_variable(total_nodes, 0, 2);
if __b__
{
/// Update bridge nodes
var i, nearest_node, ratio, max_tension, relative_tension;
// reset tension
for (i=0; i<total_nodes; i+=1) node[i].tension = 0;
// check players
with objPlayer
{
    // reset
    nearest_node = -1;
    // get nearest node
    for (i=0; i<other.total_nodes; i+=1) if (terrain_id==other.node[i]) {nearest_node = i; break;}
    // continue if no node found
    if nearest_node<0 continue;
    // get ratio to total nodes
    ratio = clamp(nearest_node, 0, other.total_nodes-1)/(other.total_nodes-1);
    // get maximum tension threshold
    max_tension = other.base_tension*sine[floor(ratio*180)];
    // set tension of nearest node first
    if (other.node[nearest_node].tension<max_tension) other.node[nearest_node].tension = max_tension;
    // set relative tension of nodes before nearest
    for (i=0; i<nearest_node; i+=1)
    {
        // get ratio to nearest node
        ratio = i/nearest_node;
        // get relative tension
        relative_tension = max_tension*sine[floor(ratio*90)];
        // only apply if greater
        if (other.node[i].tension<relative_tension) other.node[i].tension = relative_tension;
    }
    // set relative tension of nodes after nearest
    for (i=(nearest_node+1); i<other.total_nodes; i+=1)
    {
        // get ratio to nearest node
        ratio = (other.total_nodes-1-i)/(other.total_nodes-1-nearest_node);
        // get relative tension
        relative_tension = max_tension*sine[floor(ratio*90)];
        // only apply if greater
        if (other.node[i].tension<relative_tension) other.node[i].tension = relative_tension;
    }
}
// refresh node position
for (i=0; i<total_nodes; i+=1)
{
    // interpolate tension
    node[i].tension_interpolated = lerp(node[i].tension_interpolated, node[i].tension, 0.2);
    // reposition node
    node[i].y = ystart+node[i].tension_interpolated;
}

}
