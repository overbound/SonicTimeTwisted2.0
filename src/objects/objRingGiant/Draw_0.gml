/// @description  gold/bronze tint with soft emission glow
var bronze = 0;
if objProgram.in_past bronze = 1;
gpu_set_texfilter(true);
// emission halo: enlarged additive pass (soft bloom)
gpu_set_blendmode(bm_add);
shader_set(shd_giant_ring);
shader_set_uniform_f(u_bronze, bronze);
shader_set_uniform_f(u_glow, 1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.15, image_yscale * 1.15, image_angle, image_blend, 0.15 * image_alpha);
shader_reset();
gpu_set_blendmode(bm_normal);
// base pass
shader_set(shd_giant_ring);
shader_set_uniform_f(u_bronze, bronze);
shader_set_uniform_f(u_glow, 0);
draw_self();
shader_reset();
gpu_set_texfilter(false);
