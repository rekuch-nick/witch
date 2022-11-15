event_inherited();
image_xscale = 3; image_yscale = 3;

ySpeed = irandom_range(-16, -12);
grav = 1;

xSpeed = irandom_range(2, 3);
if(x < pc.x){ xSpeed *= -1; }

fade = .04;
