//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main()
{
    float px = sin(v_vTexcoord.x * 3.14159);
    float py = v_vTexcoord.y - 0.5;
    vec2 coord = v_vTexcoord;
    coord.y += 0.5 * py * px;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, coord );
}
