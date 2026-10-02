/// @description  gold/bronze tint with blurred emission glow
var bronze = 0;
if objProgram.in_past bronze = 1;
gpu_set_texfilter(true);
// emission halo: stacked scaled passes = radial blur bloom
gpu_set_blendmode(bm_add);
shader_set(shd_giant_ring);
shader_set_uniform_f(u_bronze, bronze);
shader_set_uniform_f(u_glow, 1);
var passes = 8;
var i;
for (i = 0; i < passes; i++)
{
    var s = 1.05 + i * 0.07;
    var a = 0.14 * (1 - i / passes);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * s, image_yscale * s, image_angle, image_blend, a * image_alpha);
}
shader_reset();
gpu_set_blendmode(bm_normal);
// base pass
shader_set(shd_giant_ring);
shader_set_uniform_f(u_bronze, bronze);
shader_set_uniform_f(u_glow, 0);
draw_self();
shader_reset();
gpu_set_texfilter(false);
