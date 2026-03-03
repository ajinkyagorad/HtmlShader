precision highp float;

uniform vec2 u_resolution;
uniform float u_time;
uniform vec2 u_mouse;
uniform int u_material;

varying vec2 v_texCoord;
varying vec2 v_position;
varying float v_time;
varying vec2 v_mouse;

// Advanced mathematical shader recreation
void main() {
    vec2 r = u_resolution;
    vec2 p = v_texCoord * r + 0.5;

    vec3 h = vec3(0.0);
    vec3 c = vec3(1.0);
    float A = 0.0;
    float l = 0.0;
    float a = 0.0;

    // Complex geometric transformations
    for (float i = 0.6; i > 0.05; i -= 0.1) {
        // Rotation and oscillation logic
        a = (v_time + i) * 4.0;
        a -= sin(a);
        a -= sin(a);

        // Create rotation matrix
        vec2 t = cos(a / 4.0 + vec2(0.0, 1.0));
        mat2 R = mat2(t.x, t.y, -t.y, t.x);

        // Transform coordinates
        vec2 u = (p * 2.0 - r) / r.y / 0.5;
        
        // Distance field calculations
        mat2 Rt = mat2(R[0][0], R[1][0], R[0][1], R[1][1]);
        vec2 ur = Rt * u;
        
        u -= R * clamp(ur, -vec2(i), vec2(i));

        l = max(length(u), 0.1);
        A = min((l - 0.1) * r.y / 5.0, 1.0);
        
        h = sin(i * 10.0 + a / 3.0 + vec3(1.0, 3.0, 5.0)) / 5.0 + 0.8;
        
        // Complex color mixing and shadowing
        c = mix(h, c, A) * mix(vec3(1.0), h + A * u.y / l / 2.0, 0.1 / l);
    }

    // Hyperbolic tangent approximation
    vec3 c2 = c * c;
    vec3 result = (exp(c2) - exp(-c2)) / (exp(c2) + exp(-c2));
    
    // Add mouse interaction
    float mouseDist = distance(v_texCoord, u_mouse / u_resolution);
    float mouseInfluence = smoothstep(0.3, 0.0, mouseDist);
    result += mouseInfluence * 0.1;
    
    gl_FragColor = vec4(result, 1.0);
}
