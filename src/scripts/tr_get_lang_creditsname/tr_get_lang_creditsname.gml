/// @description tr_get_lang_creditsname([languagecode])
/// @param [languagecode]
function tr_get_lang_creditsname() {
	var _langcode = global.TR_lang;
	if (argument_count > 0) _langcode = argument[0];

	return ds_map_find_value(ds_map_find_value(ds_map_find_value(global.TR_map, _langcode), "info"), "creditsname");



}
