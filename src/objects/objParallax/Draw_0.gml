/// @description  Render background
// abort if nothing to draw
if back<0 and sprite_index<0 exit;
var sx, sy, lx, ly, rx, ry, cx, cy;
// get draw coordinates
var fx = x+floor(camera_get_view_x(view_camera[view_current])*relative_x)+absolute_x;
var fy = y+floor(camera_get_view_y(view_camera[view_current])*relative_y)+absolute_y;
// get separation
if back>-1 {sx = width+separation_x; sy = height+separation_y;} else
{sx = sprite_width+separation_x; sy = sprite_height+separation_y;}
// get boundaries
if (tiled&1) lx = camera_get_view_x(view_camera[view_current])+((fx-camera_get_view_x(view_camera[view_current])) mod sx)-sx; else lx = fx;
if (tiled&2) ly = camera_get_view_y(view_camera[view_current])+((fy-camera_get_view_y(view_camera[view_current])) mod sy)-sy; else ly = fy;
if (tiled&1) rx = camera_get_view_x(view_camera[view_current])+objScreen.width+sx; else rx = fx;
if (tiled&2) ry = camera_get_view_y(view_camera[view_current])+objScreen.height+sy; else ry = fy;
if(!surface_exists(s))
{
    // if the tile width/height haven't been calculated yet (initialized at -1), calculate them
    // for performances' sake, the GMS documentation states surfaces should have dimensions
    // that are powers of 2
    if(surface_width == -1)
    {
        var dest_surface_width = objScreen.width;
        var tmp_surface_size = 1;
        while(tmp_surface_size < dest_surface_width)
        {
            tmp_surface_size *= 2;
        }
        var dest_surface_height = objScreen.height;
        surface_width = tmp_surface_size;
        tmp_surface_size = 1;
        while(tmp_surface_size < dest_surface_height)
        {
            tmp_surface_size *= 2;
        }
        surface_height = tmp_surface_size;
    }
    // create the surface
    s = surface_create(surface_width, surface_height);
}

// draw tiled on surface
/*
surface_set_target(s);
draw_clear_alpha(c_black, 0);
lx -= view_xview[view_current];
rx -= view_xview[view_current];
ly -= view_yview[view_current];
ry -= view_yview[view_current];
*/
// palette cycling for animated background lights
if (palette_cycle)
{
    shader_set(shd_palette_cycle);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_phase"), (objScreen.image_index * pal_speed) mod 1);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_hue_min"), pal_hue_min);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_hue_max"), pal_hue_max);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_hue2_min"), pal_hue2_min);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_hue2_max"), pal_hue2_max);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_hue3_min"), pal_hue3_min);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_hue3_max"), pal_hue3_max);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_sat_min"), pal_sat_min);
    shader_set_uniform_f(shader_get_uniform(shd_palette_cycle, "u_val_min"), pal_val_min);
}
for (cy=ly; cy<=ry; cy+=sy)
{
    for (cx=lx; cx<=rx; cx+=sx)
    {
        if back>-1 draw_sprite_part_ext(back,0, left, top, width, height, floor(cx), cy, image_xscale, image_yscale, image_blend, image_alpha); else
        draw_sprite_ext(sprite_index, image_index, floor(cx), cy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
}
if (palette_cycle)
{
    shader_reset();
}
/*
surface_reset_target();
// draw surface
draw_surface(s, view_xview[view_current], view_yview[view_current]);
*/

/* */
/*  */
