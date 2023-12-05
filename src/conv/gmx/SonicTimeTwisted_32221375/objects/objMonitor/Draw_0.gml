/// @description  Draw monitor
// monitor
draw_sprite_ext(sprite_index, objScreen.image_index div 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
// icon
if (objScreen.frame_counter != 0)
{
    // draw player face if applicable
    if icon>10 draw_sprite(sprIcon, 10+objGameData.character_id[view_current], x, y-image_yscale*2); else
    draw_sprite(sprIcon, icon, x, y-image_yscale*2);
}

