uniform vec3 lightDirection;
uniform vec3 lightColor;
uniform vec3 ambientColor;
uniform float kAmbient;
uniform float kDiffuse;
uniform float kSpecular;
uniform float shininess;
uniform float rim;

//attribute vec3 normal;

varying vec4 vPosition;
varying vec3 vNormal;
varying vec4 vLightDirection;
varying vec3 vLightColor;
varying vec3 light_AMB;
varying float vDiffuse;
varying float vSpecular;
varying float vShininess;
varying float vRim;
varying vec2 uvCoord;

void main() {
   
	vPosition = modelViewMatrix * vec4(position, 1.0);
	vNormal = normalMatrix * normal;
	vLightDirection = viewMatrix * vec4(lightDirection, 0.0);
	vLightColor = lightColor;
	vDiffuse = kDiffuse;
	vSpecular = kSpecular;
	vShininess = shininess;
	vRim = rim;
	uvCoord = uv;
	
	light_AMB = kAmbient * ambientColor;
   
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}
