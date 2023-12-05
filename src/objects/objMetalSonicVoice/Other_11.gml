// Unpause callback: reload message if language changed
if (used_locale != global.TR_lang)
{
    used_locale = global.TR_lang;
    event_user(0);
    cursor = string_length(message);
}

