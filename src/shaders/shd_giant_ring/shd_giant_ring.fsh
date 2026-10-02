// Giant ring recolour + soft emission glow.
//
// The object always draws the gold ring sprite; the past-timezone bronze look
// is produced here by mapping the sprite's luminance through a continuous
// bronze gradient (high colour, no palette swap). The gradient runs from a
// deep shadow through copper and bronze to a warm highlight, keeping the
// Chrono palette identity (#4B230F .. #CCA572 family).
//
// u_bronze 0 = gold (original colours), 1 = bronze (Chrono gradient)
// u_glow   0 = base pass, 1 = additive emission pass (brightened for bloom)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_bronze;
uniform float u_glow;

vec3 ramp(float t)
{
    vec3 c0 = vec3( 51.0,  21.0,  10.0) / 255.0; // deep shadow
    vec3 c1 = vec3(150.0,  60.0,  20.0) / 255.0; // copper
    vec3 c2 = vec3(196.0, 110.0,  45.0) / 255.0; // copper orange
    vec3 c3 = vec3(208.0, 145.0,  75.0) / 255.0; // mid bronze
    vec3 c4 = vec3(228.0, 195.0, 140.0) / 255.0; // light bronze gold
    vec3 c5 = vec3(255.0, 244.0, 224.0) / 255.0; // warm highlight
    if (t < 0.31) return mix(c0, c1, t / 0.31);
    if (t < 0.57) return mix(c1, c2, (t - 0.31) / 0.26);
    if (t < 0.69) return mix(c2, c3, (t - 0.57) / 0.12);
    if (t < 0.92) return mix(c3, c4, (t - 0.69) / 0.23);
    return mix(c4, c5, clamp((t - 0.92) / 0.08, 0.0, 1.0));
}

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);
    vec3 r = col.rgb;

    if (u_bronze > 0.5)
    {
        float l = dot(col.rgb, vec3(0.2126, 0.7152, 0.0722));
        float t = clamp((l - 0.10) / 0.78, 0.0, 1.0);
        r = ramp(t);
    }

    // emission pass: brighten for the additive glow draw
    r *= mix(1.0, 1.3, u_glow);

    gl_FragColor = v_vColour * vec4(r, col.a);
}
