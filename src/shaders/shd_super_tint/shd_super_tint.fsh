// Super form recolour.
//
// Swaps each character's body colours for their gold super-form equivalents and
// brightens them on a repeating cycle. The colour sets are baked straight into
// this shader, so there is no palette texture, no palette sprites and no
// palette upload machinery behind it.
//
// u_char   1 = Super Sonic, 2 = Super Tails, 3 = Super Knuckles
// u_pulse  0.0 = base colour, 1.0 = peak of the cycle

#define TOL 0.010

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_char;
uniform float u_pulse;

bool hit(vec3 a, vec3 b)
{
    return distance(a, b) < TOL;
}

vec3 tint(vec3 c)
{
    return mix(c, vec3(1.0), u_pulse * 0.5);
}

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);

    vec3 s = col.rgb;
    vec3 r = s;

    if (u_char < 1.5)
    {
        // Super Sonic: his existing gold and yellow shades brighten.
        if (hit(s, vec3(255.0, 255.0, 185.0) / 255.0)) r = tint(s);
        if (hit(s, vec3(248.0, 241.0,  91.0) / 255.0)) r = tint(s);
        if (hit(s, vec3(240.0, 230.0,  81.0) / 255.0)) r = tint(s);
        if (hit(s, vec3(234.0, 209.0,  74.0) / 255.0)) r = tint(s);
        if (hit(s, vec3(232.0, 171.0,  65.0) / 255.0)) r = tint(s);
        if (hit(s, vec3(220.0, 125.0,   0.0) / 255.0)) r = tint(s);
        if (hit(s, vec3(219.0, 132.0,  54.0) / 255.0)) r = tint(s);
    }
    else if (u_char < 2.5)
    {
        // Super Tails: orange and red fur turns gold.
        if (hit(s, vec3(136.0,   0.0,   0.0) / 255.0)) r = tint(vec3(136.0, 109.0,   0.0) / 255.0);
        if (hit(s, vec3(204.0,  68.0,   0.0) / 255.0)) r = tint(vec3(204.0, 163.0,   0.0) / 255.0);
        if (hit(s, vec3(238.0, 136.0,   0.0) / 255.0)) r = tint(vec3(238.0, 190.0,   0.0) / 255.0);
        if (hit(s, vec3(238.0, 170.0,   0.0) / 255.0)) r = tint(vec3(238.0, 190.0,   0.0) / 255.0);
        if (hit(s, vec3(238.0, 238.0,   0.0) / 255.0)) r = tint(vec3(238.0, 190.0,   0.0) / 255.0);
    }
    else
    {
        // Super Knuckles: red fur turns gold.
        if (hit(s, vec3(116.0,  16.0,  33.0) / 255.0)) r = tint(vec3(116.0,  96.0,  16.0) / 255.0);
        if (hit(s, vec3(214.0,  25.0,  50.0) / 255.0)) r = tint(vec3(214.0, 176.0,  25.0) / 255.0);
        if (hit(s, vec3(248.0,  92.0,  91.0) / 255.0)) r = tint(vec3(248.0, 217.0,  91.0) / 255.0);
        if (hit(s, vec3(248.0, 172.0, 157.0) / 255.0)) r = tint(vec3(248.0, 230.0, 157.0) / 255.0);
    }

    gl_FragColor = v_vColour * vec4(r, col.a);
}
