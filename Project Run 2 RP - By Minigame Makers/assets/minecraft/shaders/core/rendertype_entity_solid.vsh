#version 150

#moj_import <light.glsl>
#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler1;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform int FogShape;
uniform vec4 FogColor;

uniform vec3 Light0_Direction;
uniform vec3 Light1_Direction;

out float vertexDistance;
out vec4 vertexColor;
out vec4 lightMapColor;
out vec4 overlayColor;
out vec2 texCoord0;
out vec4 normal;

float validateColor() {
    // previously used for RKOFactory
    // float RKOFactory_color_flag = ((ivec3(texelFetch(Sampler0, ivec2(0, 63), 0).rgb * 255.0) == ivec3(225, 232, 168) && FogColor.r < 0.45) ? 0.0 : 1.0);


    // NOTE: AncientApparatus (by kelloverra) uses the end biome which has a purple tint to the biome color.
    //       turns out that nether wastes biome color (which is what RKOFactory uses) 
    //       and the end fog (which is what AncientApparatus uses) biome color are almost similar.
    //       correct me if im wrong, best to consult the RKOFactory team
    //                                                                                                      - KELLOVERRA
    float AncientApparatus_color_flag = ((ivec3(texelFetch(Sampler0, ivec2(0, 63), 0).rgb * 255.0) == ivec3(225, 232, 168) && FogColor.g < 0.475) ? 0.0 : 1.0);


    return AncientApparatus_color_flag;
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0) * validateColor();

    vertexDistance = fog_distance(ModelViewMat, IViewRotMat * Position, FogShape);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
    lightMapColor = texelFetch(Sampler2, UV2 / 16, 0);
    overlayColor = texelFetch(Sampler1, UV1, 0);
    texCoord0 = UV0;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);
}