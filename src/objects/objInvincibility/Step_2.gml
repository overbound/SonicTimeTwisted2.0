action_inherited();
/// Update position
var size, i, offset;
if !instance_exists(player_id) { instance_destroy(); }
    size = ds_list_size(player_id.xtable);
if size > 0 {
    // adjust sparks
    
    for (i=0; i<3; i+=1)
    {
        offset = size-1-((i+1)*spacing);
        if offset<0 offset += size;
        if is_real(ds_list_find_value(player_id.xtable, offset)) && is_real(ds_list_find_value(player_id.ytable, offset)) {
            px[i] = floor(ds_list_find_value(player_id.xtable, offset));
            py[i] = floor(ds_list_find_value(player_id.ytable, offset));
        }
    }
    
    // adjust angles
    angle = angle_wrap(angle-22.5);
    angle2 = angle_wrap(angle2-11.25);
    
    // animation
    flip = !flip;
}

