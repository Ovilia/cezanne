uniform vec3 color;

varying vec3 vColor;
varying vec3 vNormal;

void main()
{
    // pass to fs
    vColor = color;
    vNormal = normalize(normalMatrix * normal);

    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}
