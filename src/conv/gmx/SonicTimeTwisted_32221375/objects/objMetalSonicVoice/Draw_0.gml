draw_self();
draw_set_font(font);

draw_set_color(c_black);
draw_rectangle(x + 6, y - 10, x + 6 + bubble_width, y - 9 - bubble_height, false);
draw_set_color(color);
draw_rectangle(x + 6, y - 10, x + 6 + bubble_width, y - 9 - bubble_height, true);

var string_to_draw = message;
if(cursor < string_length(message))
{
    if(cursor == 0)
    {
        string_to_draw = "_";
    }
    else
    {
        string_to_draw = string_copy(message, 1, cursor)+"_";
    }
}
draw_text(x + 9, y - bubble_height - 6, string_hash_to_newline(string_to_draw));

// Cleaning up
draw_set_font(objResources.fontHud);
draw_set_color(c_white);


