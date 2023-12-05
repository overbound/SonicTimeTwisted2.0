/// @description  Reorganize the disclaimer screen
// In case the locale is changed and the screen is displayed afterwards

epilepsy_title = tr("_epilepsy_title");
epilepsy = tr("_epilepsy");
disclaimer_title = tr("_disclaimer_title");
disclaimer = tr("_disclaimer");
github = tr("_github");

// because of localizations, we'll need to calculate the optimum placement for
// disclaimer titles and texts

draw_set_font(objResources.fontHud);
var epilepsy_title_height = string_height(string_hash_to_newline(epilepsy_title));
var disclaimer_title_height = string_height(string_hash_to_newline(disclaimer_title));

var line_length = __view_get( e__VW.WView, view_current ) - 8;
draw_set_font(objResources.fontMicro);
var epilepsy_height = epilepsy_title_height + string_height_ext(string_hash_to_newline(epilepsy), 12, line_length) + 4;
var disclaimer_height = disclaimer_title_height + string_height_ext(string_hash_to_newline(disclaimer), 12, line_length) + 4;
var github_height = string_height_ext(string_hash_to_newline(github), 12, line_length);

var text_skip = floor((__view_get( e__VW.HView, view_current ) - epilepsy_height - disclaimer_height - github_height)/4);

epilepsy_title_y = text_skip;
epilepsy_y = epilepsy_title_y + epilepsy_title_height + 4;
disclaimer_title_y = epilepsy_title_y + epilepsy_height + text_skip;
disclaimer_y = disclaimer_title_y + disclaimer_title_height + 4;
github_y = disclaimer_title_y + disclaimer_height + text_skip;;

draw_set_font(objResources.fontHud);

