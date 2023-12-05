/// @description Load custom translation files.

if (objProgram.first_run) tr_set_default_lang();
tr_load_assets(); // this will replace fonts with translated ones only if translated variant exists.

