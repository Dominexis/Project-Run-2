#version 150

#moj_import <fog.glsl>
#moj_import <kello_util.glsl>
#define resolution 1024.

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

uniform vec2 ScreenSize;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

in float isTitle;
in float isCrosshairTitleBg;

in vec2 uv;
in vec2 pos;

out vec4 fragColor;



// Signed Distance Function to create shapes! credit by Inigo Quilez https://iquilezles.org/articles/distfunctions2d/

float sdCircle( vec2 p, float r )
{
    return length(p) - r;
}

float sdCross( vec2 p, vec2 b, float r ) 
{
    p = abs(p); p = (p.y>p.x) ? p.yx : p.xy;
    vec2  q = p - b;
    float k = max(q.y,q.x);
    vec2  w = (k>0.) ? q : vec2(b.y-p.x,-k);
    return sign(k)*length(max(w,0.0)) + r;
}



// main transition/wipe code
vec4 doWipeGear(float time, float rotSpeed) {
	vec2 transformedUV = ((uv/2.*ScreenSize)/ScreenSize.y);
    float accumulated_alpha = 0.0;



    // Animate time
    float colFactor = 0.0;
    
    if(time > .5) {
        time -= 0.485;
        colFactor = 1.;
    }
    time *= 0.5;



    // Transform coord (scale by time, floor coord and resolution stuff to make it pixelated, rotate by time)
    vec2 coord = scale2d(vec2(0.125/(1.0-cos(time*clamp(0.,5.,ScreenSize.x/ScreenSize.y)))))*floor(transformedUV*resolution)/resolution*rotate2d((cos(1.25+time*4.25))*rotSpeed);


    // Create shape (gear is composed of a circle and two crosses, signed distance function credit by Inigo Quilez https://iquilezles.org/articles/distfunctions2d/)
    float cross_size = 0.75;
    float cross_width = 0.125;
    float circ_radius = 0.45;
    float cross_roundness = 0.1;
    
    accumulated_alpha += 1.-step(0.125,sdCircle(coord,circ_radius));
    accumulated_alpha += 1.-step(0.125,sdCross(coord,vec2(cross_size,cross_width),cross_roundness));
    accumulated_alpha += 1.-step(0.125,sdCross(coord*rotate2d(0.785398),vec2(cross_size,cross_width),cross_roundness));


    

    // Output to screen
    float darken = 2.;
	return vec4(vec3(15./255.,10./255.,25./255.), abs(colFactor-step(1.,accumulated_alpha)));
}



void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;

    // if title color is #011915 consider it as the shader canvas and start placing pixels
	if (isTitle == 1.) {
        color = (compareColor(vertexColor.rgb, vec3(1, 25, 21))) == 1. ? vec4(doWipeGear(color.a,2.5)) : color;
        color = (compareColor(vertexColor.rgb, vec3(2, 25, 21))) == 1. ? vec4(doWipeGear(color.a,0.85)) : color;
        color = (compareColor(vertexColor.rgb, vec3(25, 25, 21))) == 1. ? texture(Sampler0, texCoord0) * ColorModulator : color;
    }
    if (isCrosshairTitleBg == 1.) {
        discard;
    }

    if (color.a < 0.003921568627451) discard;

    fragColor = color;
}