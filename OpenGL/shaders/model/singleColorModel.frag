#version 330 core

in vec3 FragPos;
in vec3 Normal;
in vec2 TexCoords;

out vec4 color;


void main() {
    color = vec4(0.9f, 0.9f, 0.9f, 1.0f);
}