/// @description  updating the displayed part of the credits
if(cursor < lines_count)
{
    for(var i = 0; i < 6; i++)
    {
        displayed_label[i] = displayed_label[i+1];
        displayed_label_is_title[i] = displayed_label_is_title[i+1];
    }
    var new_row_value = "";
    if(cursor < array_length(lines))
    {
        if(cursor < array_length(lines))
        {
            new_row_value = lines[cursor];
        }
        else
        {
            new_row_value = "";
        }
        
    }
    
    if((string_copy(new_row_value, 1, 3) == "***") &&
        (string_copy(new_row_value, string_length(new_row_value) - 2, 3) == "***")
    )
    {
        new_row_value = string_copy(new_row_value, 4, string_length(new_row_value) - 6);
        displayed_label_is_title[6] = true;
    }
    else
    {
        displayed_label_is_title[6] = false;
    }
    displayed_label[6] = new_row_value;
    cursor++;
    alarm[0] = alarm_delay;
}
else
{
    rolled = true;
}

