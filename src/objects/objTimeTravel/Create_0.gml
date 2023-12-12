event_inherited();
mode = 1;
facing = objProgram.time_traveling;
/// Setup Shader
timetravel_shader_init(objScreen.width, objScreen.height);

image_xscale=2*facing;
image_yscale=2;
spr=sprTimeTravelEffect;
if image_xscale == -2 {
   xoffset=objScreen.width;
} else xoffset=0;

draw_event_number = 0;
if (gpu_get_texfilter()) {
	draw_event_number = 1;
}