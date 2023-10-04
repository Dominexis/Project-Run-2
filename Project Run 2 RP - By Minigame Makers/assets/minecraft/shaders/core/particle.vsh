#version 330

#moj_import <fog.glsl>

in vec3 Position;
in vec2 UV0;
in vec4 Color;
in ivec2 UV2;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;
uniform float GameTime;

out float vertexDistance;
out vec2 texCoord0;
out vec4 vertexColor;

const vec2[4] offset = vec2[4](
	vec2(1.0, -1.0),
	vec2(1.0, 1.0),
	vec2(-1.0, 1.0),
	vec2(-1.0, -1.0)
);

float colorToFloat(vec4 color) {
	uvec4 c = uvec4(color * 255.0);
	uint val = c.r + (c.g << 8) + (c.b << 16) + (c.a << 24);

	return uintBitsToFloat(val);
}

void main() {
	int id = gl_VertexID % 4;
	vec2 size = vec2(textureSize(Sampler0, 0));
	
	vec2 pixel_offset = vec2(-1.0, 1.0) * offset[id] / size;
	vec2 uv = UV0 + pixel_offset * 0.5;
	
	vec2 light = texture(Sampler0, uv).ra;
	vec3 coord = Position - inverse(mat3(ModelViewMat)) * vec3(offset[id]*0.5, 0.0);
	
	vec3 data = vec3(0.0);
	vec2 tex = vec2(0.0);
	if (light.y == 0.2) {
		for (int i = 0; i < 3; i++) {
			uv.x += pixel_offset.x;
			data[i] = colorToFloat(texture(Sampler0, uv));
		}
		
		tex.x = colorToFloat(texture(Sampler0, uv + vec2(pixel_offset.x, 0.0)));
		tex.y = colorToFloat(texture(Sampler0, uv + vec2(pixel_offset.x * 2.0, 0.0)));
	}
	
	float phi = floor(coord.y * 0.125) * 1.57079632;
	data.y += sin(GameTime * 628.31853 + phi) * 1.5;
	
	vec3 pos = light.y == 0.2 ? coord + data : Position;
	gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);

    vertexDistance = fog_distance(ModelViewMat, Position, FogShape);
    texCoord0 = UV0 + tex / size;
    vertexColor = (light.y == 0.2 ? vec4(Color.rgb * light.x, Color.a) : Color) * texelFetch(Sampler2, UV2 / 16, 0);
}
