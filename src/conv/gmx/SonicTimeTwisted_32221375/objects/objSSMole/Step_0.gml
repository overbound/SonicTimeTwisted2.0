spr_direction = -direction;
change_sprite_direction_int_frames(8);


/// set depth
depth = min(2000,distance_to_object(objSSCamera)/20);


/// update shadow visibility
shadow_visible = distance_to_object(objSSCamera) < 1000;

