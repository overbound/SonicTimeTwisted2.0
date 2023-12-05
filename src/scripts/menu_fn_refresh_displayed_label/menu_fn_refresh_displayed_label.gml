function menu_fn_refresh_displayed_label(argument0, argument1) {
	// argument0 - ACTION number, not cursor
	// argument1 - String to display

	var action = argument0;
	var label = argument1;
	for(var i = 0; i < array_length(items); i++)
	{
	    if(array_length(items[i]) == 4)
	    {
	        if(items[i, 1] == argument0)
	        {
	            items[i, 0] = argument1;
	            break;
	        }
	    }
	}



}
