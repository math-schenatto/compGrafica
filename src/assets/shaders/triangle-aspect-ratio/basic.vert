#version 300 es

uniform float u_aspectRatio;

layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 color;

out vec3 vert_color;

void main()
{
    vert_color = color;
    gl_Position = vec4(pos.x / u_aspectRatio, pos.y, 0, 1.0);
}