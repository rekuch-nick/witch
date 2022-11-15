



x += xSpeed;
y += ySpeed;
ySpeed += 1;
image_angle += rot;


if(y > yStart){
	
	instance_create_depth(x, y, depth, effBlast);
	for(var i=0; i<12; i++){
		instance_create_depth(x + irandom_range(-60, 60), y + irandom_range(-60, 60), depth, effBlast);
	}
	
	var dam = hpPow;
	with(objMob){
		var dis = abs(other.x - x) + abs(other.y - y);
		if(dis <= 100 && hurtTime < 1){
			hurtTime = hurtTimeMax;
			moveCD = 15;
			shotCD += 10;
			hp -= dam;	
			

		}
	}
	
	instance_destroy();
}

