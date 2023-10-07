#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;
in vec4 normal;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
	
	// Extra Feature
	// If alpha is below 1/255 then discard, previous : if alpha is below 25/255 then discard
	// I did it so that the level of detail is extended even if the alpha is below 25/255
	// It will not disturb outside of my use case so dont worry - KelloVerra
	
    if (color.a < 0.00392156862) {
        discard;
    }
	
	// Dynamic Emmisiveness
	// If alpha is below 255/255 and above 253/255 then ignore the light level of the pixel
	
	if (color.a >= 0.99215686274 && color.a < 0.9999) {
		color = texture(Sampler0, texCoord0) * ColorModulator;
	}
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
