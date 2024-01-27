#version 150

#moj_import <fog.glsl>
#moj_import <kello_util.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform int FogShape;

uniform vec2 ScreenSize;


out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

out float isTitle;
out float isCrosshairTitleBg;

out vec2 uv;
out vec2 pos;

float offs = 1.;
vec2 offset[4] = vec2[4](vec2(1.-offs,1.-offs),vec2(offs,1.-offs),vec2(1.-offs,offs),vec2(offs,offs));

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
	
	isTitle=0.;
	isCrosshairTitleBg=0.;
	if (Position.z == 0.12) {
		isTitle=1.;
		// if title color is #011915 consider it as the shader canvas and stretch to the corners of the title font to the entire screen ||(compareColor(vertexColor.rgb, vec3(1, 25, 21)) == 1.)
		if ((compareColor(Color.rgb, vec3(2, 25, 21)) == 1.)||(compareColor(Color.rgb, vec3(1, 25, 21)) == 1.)) gl_Position.xy += (offset[gl_VertexID%4] * ScreenSize)-vec2(ScreenSize.x/ScreenSize.y);
	}
	// title color #191915
	if (Position.z == 0.0 && (compareColor(Color.rgb, vec3(6, 6, 5)) == 1.)) {
		isCrosshairTitleBg=1.;
	}

	uv = gl_Position.xy;
	pos = Position.xy;

    vertexDistance = fog_distance(ModelViewMat, IViewRotMat * Position, FogShape);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}
