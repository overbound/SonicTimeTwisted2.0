/// @description Update animation
if (animation_table > -1) and ((animation != animation_new) or animation_reset)
{
	animation = animation_new;
	animation_reset = false;
	var _anim = ds_map_find_value(animation_table, animation);
	if (_anim != undefined) {
		animation_handler.change_anim(_anim);
	}
}
animation_handler.step();