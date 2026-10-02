// Super / Chrono form recolour.
//
// Swaps each character's body colours for their gold super-form equivalents and
// brightens them on a repeating cycle. Chrono form maps the same source shades
// to bronze instead; the hybrid form blends gold and bronze. The colour sets
// are baked straight into this shader, so there is no palette texture, no
// palette sprites and no palette upload machinery behind it.
//
// u_char   1 = Sonic, 2 = Tails, 3 = Knuckles
// u_form   0/1 = Super (gold), 2 = Chrono (bronze), 3 = Hybrid (mix)
// u_pulse  0.0 = base colour, 1.0 = peak of the cycle

#define TOL 0.010

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_char;
uniform float u_form;
uniform float u_pulse;

bool hit(vec3 a, vec3 b)
{
    return distance(a, b) < TOL;
}

vec3 tint(vec3 c)
{
    return mix(c, vec3(1.0), u_pulse * 0.5);
}

// Chrono bronze pulse: warms toward light bronze instead of washing to white,
// so the form stays brown through the whole brightness cycle.
vec3 tint_bronze(vec3 c)
{
    return mix(c, vec3(1.0, 0.80, 0.55), u_pulse * 0.30);
}

vec3 form_mix(vec3 gold, vec3 bronze)
{
    if (u_form < 1.5) return gold;
    if (u_form < 2.5) return bronze;
    return mix(gold, bronze, 0.5);
}

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);

    vec3 s = col.rgb;
    vec3 r = s;

    if (u_char < 1.5)
    {
        // Super Sonic: his existing gold and yellow shades brighten.
        // Chrono: the same shades map to bronze (#4B230F .. #CCA572 reference).
        if (hit(s, vec3(255.0, 255.0, 185.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3(204.0, 165.0, 114.0) / 255.0));
        if (hit(s, vec3(248.0, 241.0,  91.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3(185.0, 146.0,  99.0) / 255.0));
        if (hit(s, vec3(240.0, 230.0,  81.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3(165.0, 126.0,  84.0) / 255.0));
        if (hit(s, vec3(234.0, 209.0,  74.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3(149.0, 109.0,  71.0) / 255.0));
        if (hit(s, vec3(232.0, 171.0,  65.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3(131.0,  91.0,  58.0) / 255.0));
        if (hit(s, vec3(224.0, 160.0,   0.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3(114.0,  74.0,  45.0) / 255.0));
        if (hit(s, vec3(220.0, 125.0,   0.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3( 75.0,  35.0,  15.0) / 255.0));
        if (hit(s, vec3(219.0, 132.0,  54.0) / 255.0)) r = form_mix(tint(s), tint_bronze(vec3( 94.0,  55.0,  30.0) / 255.0));
    }
    else if (u_char < 2.5)
    {
        // Super Tails: orange and red fur turns gold; chrono turns bronze.
        if (hit(s, vec3(136.0,   0.0,   0.0) / 255.0)) r = form_mix(tint(vec3(136.0, 109.0,   0.0) / 255.0), tint_bronze(vec3(109.0,  72.0,  36.0) / 255.0));
        if (hit(s, vec3(204.0,  68.0,   0.0) / 255.0)) r = form_mix(tint(vec3(204.0, 163.0,   0.0) / 255.0), tint_bronze(vec3(153.0, 102.0,  41.0) / 255.0));
        if (hit(s, vec3(238.0, 136.0,   0.0) / 255.0)) r = form_mix(tint(vec3(238.0, 190.0,   0.0) / 255.0), tint_bronze(vec3(184.0, 136.0,  68.0) / 255.0));
        if (hit(s, vec3(238.0, 170.0,   0.0) / 255.0)) r = form_mix(tint(vec3(238.0, 190.0,   0.0) / 255.0), tint_bronze(vec3(196.0, 158.0,  92.0) / 255.0));
        if (hit(s, vec3(238.0, 238.0,   0.0) / 255.0)) r = form_mix(tint(vec3(238.0, 190.0,   0.0) / 255.0), tint_bronze(vec3(215.0, 200.0, 150.0) / 255.0));
    }
    else
    {
        // Super Knuckles: red fur turns gold; chrono turns bronze.
        if (hit(s, vec3(116.0,  16.0,  33.0) / 255.0)) r = form_mix(tint(vec3(116.0,  96.0,  16.0) / 255.0), tint_bronze(vec3(100.0,  76.0,  32.0) / 255.0));
        if (hit(s, vec3(214.0,  25.0,  50.0) / 255.0)) r = form_mix(tint(vec3(214.0, 176.0,  25.0) / 255.0), tint_bronze(vec3(180.0, 140.0,  70.0) / 255.0));
        if (hit(s, vec3(248.0,  92.0,  91.0) / 255.0)) r = form_mix(tint(vec3(248.0, 217.0,  91.0) / 255.0), tint_bronze(vec3(220.0, 185.0, 130.0) / 255.0));
        if (hit(s, vec3(248.0, 172.0, 157.0) / 255.0)) r = form_mix(tint(vec3(248.0, 230.0, 157.0) / 255.0), tint_bronze(vec3(240.0, 220.0, 185.0) / 255.0));
    }

    gl_FragColor = v_vColour * vec4(r, col.a);
}
