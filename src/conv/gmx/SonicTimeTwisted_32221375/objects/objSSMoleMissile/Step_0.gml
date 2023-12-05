// Sprite Direction
spr_direction = -direction;
change_sprite_direction_int_frames(8);


/// set depth
depth = min(2000,distance_to_object(objSSCamera)/20);


/// Scale image

if image_index == 1 || image_index == 3 || image_index == 5 || image_index == 7 {
    xoffset=.375; 
}   else if image_index == 2 || floor(image_index) == 6 {
        xoffset=.5;
}   else if image_index == 0 || floor(image_index) = 4 {
        xoffset=.25;
}

/// update shadow visibility
shadow_visible = distance_to_object(objSSCamera) < 1000;

