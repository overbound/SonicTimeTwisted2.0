if(visible)
{
    cursor_advance = !cursor_advance;
    if(cursor_advance)
    {
        var message_length = string_length(message);
        if(message_length > 0)
        {
            if(cursor < message_length)
            {
                cursor++;
            }
        }
    }
}

