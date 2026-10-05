// Palette cycling for animated background lights (city windows, water shine,
// twinkling stars).
//
// Pixels above the saturation/value gates whose hue falls inside one of the
// three hue bands are shifted around that band by u_phase, wrapping at both
// ends - the same kind of colour cycling used for animated lights in the
// classic Sonic games. Bands may wrap across hue 0 (e.g. 0.85 -> 1.08 for
// pinkish red); a band with width <= 0 is disabled.
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float u_phase;
uniform float u_hue_min;
uniform float u_hue_max;
uniform float u_hue2_min;
uniform float u_hue2_max;
uniform float u_hue3_min;
uniform float u_hue3_max;
uniform float u_sat_min;
uniform float u_val_min;

vec3 rgb2hsv(vec3 c)
{
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));
    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

float band_hit(float h, float lo, float hi)
{
    float band = hi - lo;
    if (band <= 0.0) return 0.0;
    if (h >= lo && h <= hi) return 1.0;
    float hw = h + 1.0;
    if (hw >= lo && hw <= hi) return 1.0;
    return 0.0;
}

float band_cycle(float h, float lo, float hi, float phase)
{
    float band = hi - lo;
    float hh = h < lo ? h + 1.0 : h;
    return lo + mod(hh - lo + phase * band, band);
}

void main()
{
    vec4 col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    vec3 hsv = rgb2hsv(col.rgb);
    if (hsv.y > u_sat_min && hsv.z > u_val_min)
    {
        float h = hsv.x;
        float nh = h;
        if (band_hit(h, u_hue_min, u_hue_max) > 0.5) nh = band_cycle(h, u_hue_min, u_hue_max, u_phase);
        else if (band_hit(h, u_hue2_min, u_hue2_max) > 0.5) nh = band_cycle(h, u_hue2_min, u_hue2_max, u_phase);
        else if (band_hit(h, u_hue3_min, u_hue3_max) > 0.5) nh = band_cycle(h, u_hue3_min, u_hue3_max, u_phase);
        if (nh != h) col.rgb = hsv2rgb(vec3(nh, hsv.y, hsv.z));
    }
    gl_FragColor = col;
}
