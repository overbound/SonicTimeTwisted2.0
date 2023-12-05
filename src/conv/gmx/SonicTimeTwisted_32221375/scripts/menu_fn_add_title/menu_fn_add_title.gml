/// @description menu_fn_add_title(title)
/// @param title
/// Adds a title to the menu

var al = 0;
if(is_array(items))
{
    al = array_length(items);
}
items[al, 0] = argument[0];
