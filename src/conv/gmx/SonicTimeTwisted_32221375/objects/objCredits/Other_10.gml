/// @description  reorganizing the array - called in Create event
var flat_credits_content = false;

var first = true;
var row_is_title = true;
var index = 0;

for(var i = 0; i < array_length(lines); i++)
{
    if(!first)
    {
        flat_credits_content[index] = "";
        index++;
    }
    else
    {
        first = false;
    }
    row_is_title = true;
    for(var j = 0; j < array_length(lines[i]); j++)
    {
        if(row_is_title)
        {
            flat_credits_content[index] = "***"+lines[i,j]+"***";
            index++;
            row_is_title = false;
        }
        else
        {
            flat_credits_content[index] = lines[i,j];
            index++;
        }
    }
}
lines = flat_credits_content;

