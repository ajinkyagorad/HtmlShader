precision mediump float;

uniform vec2 u_resolution;
uniform float u_time;
uniform vec2 u_mouse;
uniform int u_material;

varying vec2 v_texCoord;
varying vec2 v_position;
varying float v_time;
varying vec2 v_mouse;

// Soft color palette
vec3 softPalette(float t) {
    vec3 a = vec3(0.5, 0.7, 0.9); // Soft blue
    vec3 b = vec3(0.9, 0.6, 0.8); // Soft pink
    vec3 c = vec3(0.8, 0.9, 0.6); // Soft green
    vec3 d = vec3(0.9, 0.8, 0.7); // Soft peach
    
    return a + b*cos(6.28318*(c*t+d + v_time * 0.1));
}

// Material functions
float material1(vec2 uv) {
    // Gradient with mathematical patterns
    float pattern = sin(uv.x * 10.0 + v_time) * cos(uv.y * 10.0 + v_time * 0.7);
    pattern += sin(distance(uv, vec2(0.5)) * 20.0 - v_time * 2.0);
    return pattern * 0.5 + 0.5;
}

float material2(vec2 uv) {
    // Cellular-like pattern
    vec2 grid = floor(uv * 8.0);
    vec2 cell = fract(uv * 8.0);
    float dist = distance(cell, vec2(0.5));
    float wave = sin(dist * 10.0 - v_time * 3.0);
    return smoothstep(0.3, 0.7, wave);
}

float material3(vec2 uv) {
    // Flowing mathematical curves
    float x = uv.x * 3.14159;
    float y = uv.y * 3.14159;
    float pattern = sin(x + cos(y * 2.0 + v_time)) * cos(y + sin(x * 2.0 + v_time));
    return pattern * 0.5 + 0.5;
}

// Rounded corners function
float roundedBox(vec2 uv, vec2 size, float radius) {
    vec2 d = abs(uv) - size + radius;
    return min(max(d.x, d.y), 0.0) + length(max(d, 0.0)) - radius;
}

// Shadow effect
float shadow(vec2 uv, vec2 lightPos) {
    vec2 toLight = lightPos - uv;
    float dist = length(toLight);
    float shadow = smoothstep(0.5, 2.0, dist);
    return shadow;
}

void main() {
    vec2 uv = v_texCoord;
    vec2 center = vec2(0.5);
    
    // Apply material based on uniform
    float materialValue;
    if (u_material == 0) {
        materialValue = material1(uv);
    } else if (u_material == 1) {
        materialValue = material2(uv);
    } else {
        materialValue = material3(uv);
    }
    
    // Get color from soft palette
    vec3 color = softPalette(materialValue);
    
    // Add mouse interaction
    float mouseDist = distance(uv, u_mouse / u_resolution);
    float mouseInfluence = smoothstep(0.3, 0.0, mouseDist);
    color += mouseInfluence * 0.2;
    
    // Rounded corners mask
    float roundedMask = 1.0 - smoothstep(0.0, 0.01, roundedBox(uv - center, vec2(0.45), 0.05));
    
    // Shadow
    float shadowValue = shadow(uv, center + vec2(sin(v_time), cos(v_time)) * 0.1);
    color *= (0.7 + 0.3 * shadowValue);
    
    // Apply mask
    color *= roundedMask;
    
    // Add subtle glow
    float glow = exp(-distance(uv, center) * 2.0) * 0.1;
    color += glow;
    
    gl_FragColor = vec4(color, 1.0);
}
