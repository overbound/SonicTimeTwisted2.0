/// @description  Render Nebula
var fx = x+floor(camera_get_view_x(view_camera[view_current])*relative_x)+absolute_x;
// get draw coordinateslute_x;
var fy = y+floor(camera_get_view_y(view_camera[view_current])*relative_y)+absolute_y;
draw_sprite_ext(sprEarth,0,fx,fy,1,1,0,c_white,1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprHalo,0,fx,fy+4,1,1,0,c_white,1);
gpu_set_blendmode(bm_normal);
// Draw Galanik Shadow
if draw {
    draw_sprite_ext(sprGalanikShadow,0,camera_get_view_x(view_camera[view_current])+xoffset,camera_get_view_y(view_camera[view_current])+yoffset,1,1,0,c_white,0.85);
    xoffset -= 2;
    if xoffset < -__view_get( e__VW.WPort, view_current ) {
    
        xoffset = __view_get( e__VW.WPort, view_current );
        yoffset = 0;
        draw=false;
    
    }
}

