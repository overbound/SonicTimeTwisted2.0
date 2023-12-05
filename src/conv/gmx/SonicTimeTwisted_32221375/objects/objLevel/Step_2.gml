/// @description  Scene culling
if objProgram.paused or objProgram.lost_focus exit;
// Cull instances
with objSceneObject if (remove==1) instance_deactivate_object(self);
// Activate instances onscreen
with objCamera instance_activate_region(__view_get( e__VW.XView, 0 )-48, __view_get( e__VW.YView, 0 )-48, __view_get( e__VW.WView, 0 )+96, __view_get( e__VW.HView, 0 )+96, true);
// Activate surrounding instances offscreen
with objPlayer {if offscreen_enabled and instance_exists(camera) and not in_view(camera.view_id, 48) instance_activate_region(x-(offset_y*2)-abs(xspeed), y-(offset_y*2)-abs(yspeed), (offset_y*4)+abs(xspeed*2), (offset_y*4)+abs(yspeed*2), true);}

