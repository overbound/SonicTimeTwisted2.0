/// @description  set depth
depth = min(2000,distance_to_object(objSSCamera)/20);
depth1= depth;

/// update shadow visibility
shadow_visible = distance_to_object(objSSCamera) < 1000;

