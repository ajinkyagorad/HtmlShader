precision mediump float;

attribute vec2 a_position;
attribute vec2 a_texCoord;

uniform vec2 u_resolution;
uniform float u_time;
uniform vec2 u_mouse;
uniform int u_material;

varying vec2 v_texCoord;
varying vec2 v_position;
varying float v_time;
varying vec2 v_mouse;

void main() {
    // For full-screen quad, position is already in clip space (-1 to 1)
    vec2 clipSpace = a_position;
    
    // Mathematical wave transformation
    float wave = sin(a_position.x * 2.0 + u_time) * cos(a_position.y * 2.0 + u_time * 0.7) * 0.05;
    vec2 waveOffset = vec2(sin(u_time + a_position.y * 3.0), cos(u_time + a_position.x * 3.0)) * wave;
    
    // Apply wave distortion
    clipSpace += waveOffset;
    
    gl_Position = vec4(clipSpace, 0.0, 1.0);
    
    v_texCoord = a_texCoord;
    v_position = a_position;
    v_time = u_time;
    v_mouse = u_mouse;
}
