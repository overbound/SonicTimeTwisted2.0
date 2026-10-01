// Giant ring recolour + emission glow.
//
// The object always draws the gold ring sprite; the past-timezone bronze look
// is produced here by remapping the baked gold palette, mirroring how
// shd_super_tint remaps the super-form golds. The bronze ramp follows the
// Chrono palette (#4B230F .. #CCA572).
//
// u_bronze 0 = gold (original colours), 1 = bronze (Chrono palette)
// u_glow   0 = base pass, 1 = additive emission pass (brightened for bloom)

#define TOL 0.010

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_bronze;
uniform float u_glow;

bool hit(vec3 a, vec3 b)
{
    return distance(a, b) < TOL;
}

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);

    vec3 s = col.rgb;
    vec3 r = s;

    if (u_bronze > 0.5)
    {
        if (hit(s, vec3(224.0, 224.0,   0.0) / 255.0)) r = vec3(204.0, 165.0, 114.0) / 255.0;
        if (hit(s, vec3(224.0, 160.0,   0.0) / 255.0)) r = vec3(165.0, 126.0,  84.0) / 255.0;
        if (hit(s, vec3(224.0, 128.0,   0.0) / 255.0)) r = vec3(149.0, 109.0,  71.0) / 255.0;
        if (hit(s, vec3(192.0,  64.0,   0.0) / 255.0)) r = vec3(114.0,  74.0,  45.0) / 255.0;
        if (hit(s, vec3(128.0,   0.0,   0.0) / 255.0)) r = vec3( 75.0,  35.0,  15.0) / 255.0;
        if (hit(s, vec3(224.0, 224.0, 224.0) / 255.0)) r = vec3(255.0, 242.0, 222.0) / 255.0;
    }

    // emission pass: brighten for the additive glow draw
    r *= mix(1.0, 1.5, u_glow);

    gl_FragColor = v_vColour * vec4(r, col.a);
}
