/// @description  Render lava
if alarm[2] draw_sprite(sprite_index, 2+(image_index mod 2), x, y); else
if alarm[1] or alarm[3] draw_sprite(sprite_index, image_index mod 2, x, y);

