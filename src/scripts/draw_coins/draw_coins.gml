function draw_coins(_x, _y) {
	// force lives icon to the coins icon immediately
	draw_sprite(sprCoins, 0, _x, _y);

	// lives string
	draw_set_color(c_white);
	draw_set_alpha(image_alpha);
	draw_set_valign(fa_top);
	draw_set_font(objResources.fontLives);
	draw_set_halign(fa_left);

	// draw character name.
	var drawname = tr("_charname_COINS");
	draw_text_colour(_x + 32, _y + 4, string_hash_to_newline(drawname), c_yellow, c_yellow, c_white, c_white, 1);

	// make coins string.
	var drawstring = "";
	if (objGameData.player_coins[view_current] >= 100) drawstring = string(objGameData.player_coins[view_current]);
	if (objGameData.player_coins[view_current] >= 10) drawstring = "0" + string(objGameData.player_coins[view_current]);
	else drawstring = "00" + string(objGameData.player_coins[view_current]);
	draw_text(_x + 32, _y + 4, string_hash_to_newline(chr(10) + " x" + drawstring));
	draw_set_font(objResources.fontHud);



}
