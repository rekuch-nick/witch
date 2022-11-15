


x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_xscale += gro;
image_yscale += gro;

image_angle += rot;

image_alpha -= fade;

if(timeCD != -1){ timeCD --; }

if(image_alpha <= 0 || (timeCD != -1 && timeCD <= 0) ){
	instance_destroy();
}