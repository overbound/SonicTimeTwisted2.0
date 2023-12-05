/// @description  Render waterfall
var w, h, th, i, j;
w = sprite_get_width(sprWaterfall);
h = sprite_get_height(sprWaterfall);
ox = 174+x;
oy = y+image_yscale*32;
for (j=y; j<oy; j+=h)
{
    th = min(oy-j, h);
    for (i=x; i<ox; i+=w) draw_sprite_part_ext(sprWaterfall, image_index, 0, 0, min(ox-i, w), th, i, j, 1, 1, image_blend, image_alpha);
}

