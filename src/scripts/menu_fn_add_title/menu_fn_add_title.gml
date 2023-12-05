/// @description menu_fn_add_title(title)
/// @param title
/// Adds a title to the menu
function menu_fn_add_title() {

	var al = 0;
	if(is_array(items))
	{
	    al = array_length(items);
	}
	items[al, 0] = argument[0];



}
