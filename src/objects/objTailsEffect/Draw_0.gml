var swap_tint = player_id.specialForm && (player_id.character_id >= 1) && (player_id.character_id <= 3);
if (swap_tint)
{
    shader_set(shd_super_tint);
    shader_set_uniform_f(u_super_tint_char, player_id.character_id);
    shader_set_uniform_f(u_super_tint_pulse, 1 - abs(player_id.current_pal - 3) / 3);
    shader_set_uniform_f(u_super_tint_form, player_id.specialForm);
}
draw_sprite_ext(sprite_index,image_index,x+xoffset,y+yoffset,image_xscale,image_yscale,image_angle,c_white,image_alpha);
if (swap_tint) shader_reset();

