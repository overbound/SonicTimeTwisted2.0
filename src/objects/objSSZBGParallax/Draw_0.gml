/// @description  Render background
var seperatex, seperatey, leftx, lefty, rightx, righty, centerx, centery;
// get draw coordinates
var floorx = x+floor(camera_get_view_x(view_camera[view_current])*relative_x)+absolute_x;
var floory = y+floor(camera_get_view_y(view_camera[view_current])*relative_y)+absolute_y;
// get separation
seperatex = sprite_width + separation_x;
seperatey = sprite_height + separation_y;
centerx= camera_get_view_x(view_camera[view_current]) + objScreen.width ;
// get boundaries
leftx = ((floorx - camera_get_view_x(view_camera[view_current])) mod seperatex) - seperatex;
rightx = camera_get_view_x(view_camera[view_current]) + objScreen.width + seperatex;
// draw tiled
for (centerx=leftx; centerx<=rightx; centerx+=seperatex){
    draw_sprite_ext(sprite_index, image_index, centerx, floory, image_xscale, image_yscale, image_angle, image_blend, image_alpha);//cx
}
/* Render
var lx = ((((view_xview[view_current] * relative_x) div 1) - view_xview[view_current]) mod sprite_width) - sprite_width;
var rx = view_wview[view_current] + sprite_width;
for (var cx = lx; cx <= rx; cx += sprite_width) {
    draw_sprite_ext(sprite_index, image_index, cx, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

/* */
/*  */
