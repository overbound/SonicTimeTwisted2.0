if mode == 0 {
    d3d_draw_wall(x, y, z+252, x, y+sprite_width, z-260, sprite_get_texture(sprite_index, image_index), 1, 1);
} else d3d_draw_wall(x, y, z+252, x-sprite_width, y, z-260, sprite_get_texture(sprite_index, image_index), 1, 1);

