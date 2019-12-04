//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//declare variables to determine width and hight of a pixel
uniform float pixelH;
uniform float pixelW;

void main()
{
    //declare vector with x and y component
    vec2 offsetx;
    offsetx.x = pixelW;
    vec2 offsety;
    offsety.y = pixelH;

    //find alpha value of the pixel currently being drawn
    float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;

    //1 pixel to the right
    alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsetx).a);
    //1 pixel to the left
    alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsetx).a);
    //1 pixel below
    alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsety).a);
    //1 pixel above
    alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsety).a);




    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor.a = alpha;
}
