var frame = 0;
with (objScreen) frame = image_index div other.blink_speed;
image_alpha = min_opacity + (blend_factor * (frame mod 2));

