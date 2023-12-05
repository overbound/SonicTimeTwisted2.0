/// @description menu_fn_set_or_prepend_gp_label(key, existingLabel)
/// @param key
/// @param  existingLabel
function menu_fn_set_or_prepend_gp_label(argument0, argument1) {
	if(argument1 == "")
	{
	    return menu_fn_get_gp_label(argument0);
	}
	else
	{
	    if(is_string(argument1) && string_length(argument1) > 0)
	    {
	        return menu_fn_get_gp_label(argument0)+"/"+argument1;
	    }
	}



}
