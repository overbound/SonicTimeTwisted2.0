/// @description  Control player
for (var n = 0; n < 2; ++n) {
    if (player_id[n] != noone) {
        with (player_id[n]) {
            var horizontal_sign = input_axis_x();
            if (horizontal_sign == 0) {
                xspeed -= min(abs(xspeed), ground_friction) * sign(xspeed);
            }
            else {
                if (xspeed != 0 and sign(xspeed) != horizontal_sign) {
                    xspeed += deceleration * horizontal_sign;
                }
                else if (abs(xspeed) < speed_cap) {
                    xspeed += acceleration * horizontal_sign;
                    if (abs(xspeed) > speed_cap) {
                        xspeed = speed_cap * horizontal_sign;
                    }
                }
            }
            
            other.position[n] = clamp(other.position[n] + (xspeed / 2), 0, other.height - (offset_y + 1));
            var w = (other.width - (offset_x * 2)) * 0.5;
            var r = ((other.position[n] / other.cycle_height) * 360);
            x = other.bbox_left + dsin(r) * w;
            y = other.bbox_bottom - (offset_y + 1) - other.position[n];
            if (other.position[n] == other.height - (offset_y + 1)) {
                player_is_running();
                other.player_id[n] = noone;
                other.remove = 1;
                exit;
            }
            
            // slide if moving too slow
            if (abs(xspeed) < other.minimum_speed) {
                player_is_falling();
                other.player_id[n] = noone;
                other.remove = 1;
                exit;
            }
            
            // jumping
            if (input_check_pressed(cACTION)) {
                player_is_jumping();
                other.player_id[n] = noone;
                other.remove = 1;
                exit;
            }
            
            // animate
            if (sign(xspeed) > 0) {
                image_index = (other.position[n] / other.cycle_height) * 14;
            }
            else {
                image_index = ((other.sprite_height - (offset_y + 1) - other.position[n]) / other.cycle_height) * 14;
            }
            
            image_angle = angle;
            
            // set facing
            facing = sign(xspeed);
        }
    }
}

