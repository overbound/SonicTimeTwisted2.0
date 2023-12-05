/// @description  Update animation and particles

// update animation
if (animation_table>-1) and ((animation!=animation_new) or animation_reset)
{
    animation = animation_new;
    animation_reset = false;
    timeline_index = ds_map_find_value(animation_table, animation);
    timeline_position = 0;
}

// ignore if we haven't started yet
//if not objLevel.started exit;

// flashing
image_alpha = 1-((invulnerable div 4) mod 2);

// bubbles
if (underwater_count mod 60)==0 && state != player_state_path && objProgram.cutscene == false with instance_create(x+facing*8, y-8, objBubble) {size = 1; offset = 180*(other.facing<1);}

// brake dust
if landed and (animation=="brake" or animation=="glide_slide") and not (objScreen.image_index mod 4) part_particles_create(objLevel.particles, x, y+offset_y-7, objResources.dust, 1);

