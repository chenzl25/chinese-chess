#version 330 core
struct Material {
    sampler2D diffuse;
    float     shininess;
};

struct Light {
    vec3 position;

    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
};

in vec3 FragPos;
in vec3 Normal;
in vec2 TexCoords;

out vec4 color;

uniform vec3 viewPos;
uniform Material material;
uniform Light light;

void main() {

    color = texture(material.diffuse, TexCoords);
    if (color.a == 0)
        discard;
}