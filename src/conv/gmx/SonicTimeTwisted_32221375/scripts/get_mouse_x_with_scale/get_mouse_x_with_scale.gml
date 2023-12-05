var mx = mouse_x;
// handle the cases when integer scaling is used
with(objScreen) {
    if (video_mode > 0) {
        mx = __view_get( e__VW.XView, 0 ) + (mx - __view_get( e__VW.XView, 0 ) - width*(1 - (video_mode/full_scale))/2)*(full_scale/video_mode);
    }
}
return mx;
