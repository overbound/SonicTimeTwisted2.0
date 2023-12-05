//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D warp;
void main()
{
    vec4 warpPixel = texture2D( warp, v_vTexcoord );
    vec2 coord = v_vTexcoord;
    coord.x += warpPixel.r * 0.05;
    coord.y += warpPixel.g * 0.05;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, coord );
}
