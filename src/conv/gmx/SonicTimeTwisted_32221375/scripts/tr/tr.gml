/// @description tr(string_id)
/// @param string_id
// function used to translate strings or macro expansion
var translated = argument0;
var data = global.TR_map[? global.TR_lang];
if (is_undefined(data)) return "_LANG_ERROR"; // the language doesn't exist?
translated = ds_map_find_value(data[? "data"], translated);
if (is_undefined(translated))
{
    // macro expansion?
    translated = argument0;
    if(string_count("::", translated) >= 2
        && string_char_at(translated, 1) == ":"
        && string_char_at(translated, 2) == ":")
    {
        translated = string_copy(translated, 3, string_length(translated) - 2);
        var macro_end_pos = string_pos("::", translated);
        translated = string_copy(translated, macro_end_pos + 2, string_length(translated) - macro_end_pos - 1);
    }
}

return translated;
