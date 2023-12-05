action_inherited();
mode = 1;
facing = objProgram.time_traveling;
/// Setup Shader
timetravel_shader_init(426, 240);

image_xscale=2*facing;
image_yscale=2;
spr=sprTimeTravelEffect;
if image_xscale == -2 {
   xoffset=426;
} else xoffset=0;

