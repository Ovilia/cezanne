uniform vec3 color;
uniform vec3 light;

varying vec3 vColor;
varying vec3 vNormal;
varying vec3 vLight;

void main()
{
    // pass to fs
    vColor = color;
    vNormal = normalize(normalMatrix * normal);

    vec4 viewLight = viewMatrix * vec4(light, 1.0);
    vLight = viewLight.xyz;

    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}
