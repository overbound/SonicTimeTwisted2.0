//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D mask;
uniform sampler2D grad;
uniform float shift;
uniform vec2 scl;
void main()
{
    vec4 maskPixel = texture2D( mask, vec2(
        mod(v_vTexcoord.x * scl.x + shift, 1.0),
        mod(v_vTexcoord.y * scl.y, 1.0)
    ) );
    maskPixel = texture2D( grad, vec2(mod(maskPixel.r + shift, 1.0), 0.0) );
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ) * maskPixel;
}
