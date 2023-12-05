var __b__;
__b__ = action_if_variable(instance_exists(parent_id), true, 0);
if __b__
{
/// Check if we've stopped
if not alarm[1] and (speed!=0) and place_meeting(x, y, parent_id) alarm[1] = 1;

}
/// set reaction
if place_meeting(x,y,parent_id) {
    reaction_script=noone;
    }
else if instance_exists(parent_id) reaction_script=player_reaction_harmful;

