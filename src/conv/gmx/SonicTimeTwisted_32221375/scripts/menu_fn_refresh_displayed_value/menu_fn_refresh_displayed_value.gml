/// @description menu_fn_refresh_displayed_value(action,str)
/// @param action
/// @param str
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
            items[i, 2] = true;
            items[i, 3] = argument1;
            break;
        }
    }
}
