/// @description  Generate sparkle
if not timeline_running or (objScreen.image_index mod 11) exit;
part_particles_create(objLevel.particles, x+ox[offset], y+oy[offset], objResources.sparkle, 1);
offset = (offset+1) mod 7;

