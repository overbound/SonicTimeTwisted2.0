/// @description Free resources...

ds_map_destroy(anim_sonic);
ds_map_destroy(anim_tails);
ds_map_destroy(anim_knuckles);
ds_map_destroy(anim_sonic_super);
part_type_destroy(splash);
part_type_destroy(bubble_pop);
part_type_destroy(sparkle);
part_type_destroy(explosion1);
part_type_destroy(explosion2);
part_type_destroy(dust);
part_type_destroy(lspark);
part_type_destroy(flame);
part_type_destroy(flame_dust);
part_type_destroy(ff_snow);
font_delete(fontHud);
font_delete(fontHudMin);
font_delete(fontLives);
font_delete(fontMicro);
font_delete(fontTitleLarge);
font_delete(fontTitleSmall);
font_delete(fontTitleSmallest);
tr_free();
draw_texture_flush();

// free all stuff just in case.
var i = 0;
repeat (8192) // repeat loops are a little faster in VM and way faster in YYC.
{
    if (i != application_surface && surface_exists(i))
    {
        surface_free(i);
        show_debug_message("Freed surface " + string(i));
    }
    
    if (buffer_exists(i))
    {
        buffer_delete(i);
        show_debug_message("Freed buffer " + string(i));
    }
    
    if (ds_exists(i, ds_type_map))
    {
        ds_map_destroy(i);
        show_debug_message("Freed DS Map " + string(i));
    }
    
    if (ds_exists(i, ds_type_list))
    {
        ds_list_destroy(i);
        show_debug_message("Freed DS List " + string(i));
    }
    
    if (ds_exists(i, ds_type_queue))
    {
        ds_queue_destroy(i);
        show_debug_message("Freed DS Queue " + string(i));
    }
    
    if (ds_exists(i, ds_type_grid))
    {
        ds_grid_destroy(i);
        show_debug_message("Freed DS Grid " + string(i));
    }
    
    if (ds_exists(i, ds_type_stack))
    {
        ds_stack_destroy(i);
        show_debug_message("Freed DS Stack " + string(i));
    }
    
    if (ds_exists(i, ds_type_priority))
    {
        ds_priority_destroy(i);
        show_debug_message("Freed DS Priority " + string(i));
    }
    
    if (part_system_exists(i))
    {
        part_system_destroy(i);
        show_debug_message("Freed Particle System " + string(i));
    }
    
    if (part_type_exists(i))
    {
        part_type_destroy(i);
        show_debug_message("Freed Particle Type " + string(i));
    }
    
    i++;
}

