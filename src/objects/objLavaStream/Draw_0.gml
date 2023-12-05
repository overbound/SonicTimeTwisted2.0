/// @description  Draw lava stream
// adjust image
var e = max(0, offset-length);
// loop through pieces
for (var i=ystart+offset; i>ystart+e; i-=32)
{
    // skip if too far down
    if (i>=ystart+max_distance) continue;
    // stream foot
    if (i-36<ystart+offset-length) draw_sprite_part(sprAALavaStreamFoot, ends_image+floor(image)*2, 0, 36-clamp(i-ystart, 0, 36), 64, clamp(i-ystart, 0, ystart+max_distance-i), x, max(i-32, ystart)); else
    // stream head
    if (i==ystart+offset) draw_sprite_part(sprAALavaStreamHead, ends_image+floor(image)*2, 0, 32-clamp(i-ystart, 0, 32), 64, clamp(i-ystart, 0, ystart+max_distance-i), x, max(i-32, ystart)); else
    // stream body
    draw_sprite_part(sprAALavaStream, image, 0, 32-clamp(i-ystart, 0, 32), 64, clamp(i-ystart, 0, ystart+max_distance-i), x, max(i-32, ystart));
}
// debugging
if debug_mode draw_rectangle(x, y, x+sprite_width, y+image_yscale, false);

