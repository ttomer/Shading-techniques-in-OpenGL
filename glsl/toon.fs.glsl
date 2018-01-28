varying vec3 position1;
varying vec3 interpolatedNormal;
uniform vec3 lightDirectionUniform;

void main() {

	//TOTAL INTENSITY
	//TODO PART 1D: calculate light intensity	
	
	vec3 l = normalize(lightDirectionUniform);
	vec3 n = normalize(interpolatedNormal);
	vec3 v = normalize(cameraPosition - position1);
	float lightIntensity= 1.0; 

	float cosa = dot(l, n);
	vec3 color = vec3(1.0, 1.0, 1.0);
	
	if(cosa < 0.05){
	lightIntensity = 0.7;
	color = vec3(0.7, 0.35, 0.9);
	}else if(cosa < 0.35){
	lightIntensity = 0.9;
	color = vec3(0.7, 0.35, 0.9);
	} else if(cosa < 0.6){
	lightIntensity = 1.2;
	color = vec3(0.7, 0.35, 0.9);
	} else if(cosa < 0.7){
	lightIntensity = 1.8;
	color = vec3(0.7, 0.35, 0.9);
	} 

   	vec4 resultingColor = vec4(color * lightIntensity, 0.0);

   	//TODO PART 1D: change resultingColor based on lightIntensity (toon shading)

   	//TODO PART 1D: change resultingColor to silhouette objects

	gl_FragColor = resultingColor;
}
