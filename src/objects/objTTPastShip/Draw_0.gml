/// @description  Render background
yy=y+floor(__view_get( e__VW.YView, view_current )*relative_y)+absolute_y;
xx = x+floor(__view_get( e__VW.XView, view_current )*relative_x)+absolute_x;
// abort if nothing to draw
if back<0 and sprite_index<0 exit;
var sx, sy, lx, ly, rx, ry;
// get draw coordinates
var fx = x+floor(__view_get( e__VW.XView, view_current )*relative_x)+absolute_x;
var fy = y+floor(__view_get( e__VW.YView, view_current )*relative_y)+absolute_y;
// get separation
if back>-1 {sx = width+separation_x; sy = height+separation_y;} else
{sx = sprite_width+separation_x; sy = sprite_height+separation_y;}
// get boundaries
if (tiled&1) lx = __view_get( e__VW.XView, view_current )+((fx-__view_get( e__VW.XView, view_current )) mod sx)-sx; else lx = fx;
if (tiled&2) ly = __view_get( e__VW.YView, view_current )+((fy-__view_get( e__VW.YView, view_current )) mod sy)-sy; else ly = fy;
if (tiled&1) rx = __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+sx; else rx = fx;
if (tiled&2) ry = __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+sy; else ry = fy;
// draw tiled
for (cy=ly; cy<=ry; cy+=sy)
{
    for (cx=lx; cx<=rx; cx+=sx)
    {
        if back>-1 draw_background_part_ext(back, left, top, width, height, cx, cy, image_xscale, image_yscale, image_blend, image_alpha); 
        
        else{
        
        if yy+sprite_height > objTTPastBackParent.water.y
        sprite_h=sprite_height-(yy+sprite_height -objTTPastBackParent.water.y);
        else sprite_h = sprite_height;
        draw_sprite_part(sprite_index,image_index,0,0,sprite_width,sprite_h,cx,yy);
        
        }
        //draw_sprite_ext(sprite_index, image_index, cx, cy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
}
//set wave y hack
if instance_exists(objLevel.player[0]) {
if !objLevel.player[0].underwater
    with objTTPWave { y = other.yy+yoffset; visible = true; }
    else with objTTPWave { visible = false; }
}
//draw part of oil rig depending on water level
   /* yy=y+floor(view_yview[view_current]*relative_y) + absolute_y;
    xx=x+floor(view_xview[view_current]*relative_x)+absolute_x;
    if yy > other.watery
    other.sprite_h=yy-other.water.y;
    draw_sprite_part(sprBackTTFRig,image_index,0,0,sprite_width,other.sprite_h,xx,yy);*/
                       

/* */
/*  */
