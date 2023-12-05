// reinit scroll values
title_offset1 = default_title_offset1;
title_offset2 = default_title_offset2;
score_offset1 = default_score_offset1;
score_offset2 = default_score_offset2;
score_offset3 = default_score_offset3;
score_offset4 = default_score_offset4;
// screen positions
draw_set_font(objResources.fontTitleSmallest);
title_ox1 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(super_title_line1)) * 0.5);
title_ox2 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(super_title_line2)) * 0.5);
draw_set_font(objResources.fontHud);
score_ox1 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(ss_instructions1)) * 0.5);
score_ox2 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(ss_instructions2)) * 0.5);
score_offset1 = score_ox1 + objScreen.width;//(ceil((objScreen.width - score_ox1) * 0.0625) * 16) + 48;
score_offset2 = score_ox2 + objScreen.width;//(ceil((objScreen.width - score_ox2) * 0.0625) * 16) + 48;
alarm[6] = 300;
state = 6;

