var __b__;
__b__ = action_if_variable(instance_exists(parent_id), true, 0);
if __b__
{
/// Catch up to head
move_towards_point(parent_id.x, parent_id.y, 3);

}
