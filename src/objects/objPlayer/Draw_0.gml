/// @description  Draw character image
// Super form tint: keep the shader bound to the player sprite only. current_pal
// runs 0 -> 6, which is a triangle wave peaking at 3, matching the cycle the
// palette table used to drive.
var swap_tint = (specialForm > 0) && (character_id >= 1) && (character_id <= 3);
if (swap_tint)
{
    shader_set(shd_super_tint);
    shader_set_uniform_f(u_super_tint_char, character_id);
    shader_set_uniform_f(u_super_tint_pulse, 1 - abs(current_pal - 3) / 3);
}
if sprite_index>-1 draw_sprite_ext(sprite_index, image_index, floor(x), floor(y)+sprite_y_offset, image_xscale*facing, image_yscale, image_angle, image_blend, image_alpha);
if (swap_tint) shader_reset();

if (debug_mode)
{
	/// Draw collision mask
	var x1, y1, x2, y2;

	// bounding box
	draw_set_color(c_lime);
	draw_set_alpha(image_alpha);
	if mask_rotation mod 180 draw_rectangle(floor(x)-offset_y, floor(y)-offset_x, floor(x)+offset_y, floor(y)+offset_x, true); else
	draw_rectangle(floor(x)-offset_x, floor(y)-offset_y, floor(x)+offset_x, floor(y)+offset_y, true);

	// wall sensor
	x1 = floor(x)-cosine[mask_rotation]*offset_wall;
	y1 = floor(y)+sine[mask_rotation]*offset_wall;
	x2 = floor(x)+cosine[mask_rotation]*offset_wall;
	y2 = floor(y)-sine[mask_rotation]*offset_wall;
	draw_set_color(c_white);
	draw_line(x1, y1, x2, y2);
	draw_set_alpha(1);

}
