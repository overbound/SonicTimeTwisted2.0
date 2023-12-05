/// @description  Call this after setting a translation_key for the message to display
font = objResources.fontLives;
message = tr(translation_key);
draw_set_font(font);
if(message == "")
{
    visible = false;
}
else
{
    play_sfx(sndMetalSpeak,1);
    message = string_upper(message);
    bubble_width = string_width(string_hash_to_newline(message)) + 5;
    bubble_height = string_height(string_hash_to_newline(message)) + 5;
    visible = true;
}
cursor_advance = true;
cursor = 0;
draw_set_font(objResources.fontHud);


