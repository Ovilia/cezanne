uniform vec3 color;
uniform vec3 light;

varying vec3 vColor;
varying vec3 vNormal;
varying vec3 vLight;
varying vec3 vEye;

void main()
{
    // pass to fs
    vColor = color;
    vNormal = normalize(normalMatrix * normal);

    vec4 viewLight = modelViewMatrix * vec4(light, 1.0);
    vLight = viewLight.xyz;

    vec3 vEye = vNormal;

    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}
