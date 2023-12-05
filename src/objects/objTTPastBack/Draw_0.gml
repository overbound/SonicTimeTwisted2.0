action_inherited();
/// Scale water strips
if not __view_get( e__VW.Visible, view_current ) exit;
var offset, scale, i;
// get scale based on offset
offset = floor(__view_get( e__VW.YView, view_current )*relative_y)+absolute_y;
scale = 1;
with water scale = median((y-offset)/160, -other.scale_limit, other.scale_limit);
// apply scale
for (i=0; i<20; i+=1)
{
    strip[i].image_yscale = scale;
    strip[i].absolute_y = absolute_y+(i*8)*scale;
    with strip[i] event_perform(ev_draw, 0);
}


