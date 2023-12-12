/// @description  Render Background Elements
var offset = sin(objScreen.image_index/60)*2;
draw_sprite(sprTitleFog,0, camera_get_view_x(view_camera[view_current]) + 280+offset,1960);
draw_sprite(sprSSZLittlePlanet,0, camera_get_view_x(view_camera[view_current]) + (objScreen.width / 2),1864);

