action_inherited();
reaction_script = player_reaction_fire;
image_speed = 0.05;
draw_set_color(c_white);
uni_time = shader_get_uniform(WaveShader,"time");
var_time_var = 0;
uni_resolution = shader_get_uniform(WaveShader,"resolution");
var_resolution_x = __view_get( e__VW.WView, 0 );
var_resolution_y = __view_get( e__VW.HView, 0 );
uni_wave_amount = shader_get_uniform(WaveShader,"wave_amount");
var_wave_amount = 20; //higher = more waves
uni_wave_distortion = shader_get_uniform(WaveShader,"wave_distortion");
var_wave_distortion = 30; //higher = less distortion
uni_wave_speed = shader_get_uniform(WaveShader,"wave_speed");
var_wave_speed = 2.0; //higher = faster
shader_enabled = true;
full_screen_effect = true;
bubbleIndex = 0;

