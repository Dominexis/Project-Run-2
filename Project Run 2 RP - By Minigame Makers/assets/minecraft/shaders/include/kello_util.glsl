#version 150


// Gui scale detection by McTsts (https://github.com/McTsts/mc-core-shaders/blob/main/gui%20scale/util.glsl) [CURRENTLY UNUSED]

vec2 guiPixel(mat4 ProjMat) {
	return vec2(ProjMat[0][0], ProjMat[1][1]) / 2.0;
}

int guiScale(mat4 ProjMat, vec2 ScreenSize) {
    return int(round(ScreenSize.x * ProjMat[0][0] / 2));
}





// compare colors (please i cant live with floating point precision)
// returns 1. if true, 0. otherwise

float compareColor(vec3 col, vec3 col1) {
	return (ceil(col.r*255.) == ceil(col1.r) && 
			ceil(col.g*255.) == ceil(col1.g) &&
			ceil(col.b*255.) == ceil(col1.b)  ) ? 1. : 0.;
}





// rotation transformation matrix (i reimplement it instead of using mojang's for my own readibility and bug fixing purposes)

mat2 rotate2d(float _angle){
    return mat2(cos(_angle),-sin(_angle),
                sin(_angle), cos(_angle));
}

// scale transformation matrix

mat2 scale2d(vec2 amount){
    return mat2(amount.x,   0,
                0,          amount.y);
}