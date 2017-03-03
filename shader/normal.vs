varying vec3 vNormal;

void main()
{
    // pass to fs
    vNormal = normalize(normalMatrix * normal);

    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}
