if(instance_number(objScreen) > 0){ return; }

if(moveCD > 0){ moveCD --; }
if(hurtTime > 0){ hurtTime --; }

var dis = abs(x - pc.x) + abs(y - pc.y);
if(dis <= sightRange){
	
	var wantToFlip = false;
	
	if(facePlayer && x < pc.x && facing != 1){ wantToFlip = true; }
	if(facePlayer && x > pc.x && facing != -1){ wantToFlip = true; }
	
	if(wantToFlip){
		if(turnTime <= 0){
			turnTime = irandom_range(turnTimeMax, turnTimeMaxMax);
			facing *= -1;
			if(facing == 1 && image_xscale < 0){ image_xscale *= -1; }
			if(facing == -1 && image_xscale > 0){ image_xscale *= -1; }
		} else {
			turnTime --;
		}
	}
	
	if(irandom_range(1, 60) == 1){
		ytMod = choose(0, 0, -90, 90);
	}
	
	xt = pc.x + xtMod; yt = pc.y + ytMod;
	
	
	var angle = arctan2(yt - y, xt - x);
	xSpeed = cos(angle) * walkSpeed;
	ySpeed = sin(angle) * walkSpeed;
	
	if(dis < closeRange){
		xSpeed *= -1;
		ySpeed *= -1;
	}
	
	if(abs(dis - closeRange) > walkSpeed){
	
		var xs = xSpeed;	
		if(moveCD > 0){ xs = 0; }
		var dir = xs > 0 ? 1 : -1;
		x += xs;
		while(	pointInBlock(x+fat*dir, y-fat) ||
				pointInBlock(x+fat*dir, y+fat) ||
				pointInMob(x+fat*dir, y-fat) ||
				pointInMob(x+fat*dir, y+fat) ){
			x -= dir;
		}
		
	
		var ys = ySpeed;
		if(moveCD > 0){ ys = 0; }
		var dir = ys > 0 ? 1 : -1;
		y += ys;
		while(	pointInBlock(x+fat, y+fat*dir) ||
				pointInBlock(x-fat, y+fat*dir) ||
				pointInMob(x+fat, y+fat*dir) ||
				pointInMob(x-fat, y+fat*dir) ){
			y -= dir;
		}
		
		
		depth = -2000 - y/5;
	}
	
	
	if(shotType != noone){
		shotCD --; if(shotCD < 1){
			shotCD = shotCDMax;
			moveCD = 20;
			
			var s = instance_create_depth(x, y, -5000, shotType);
			if(longShot){ s.dis *= 2; }
		
		}
	}
	
	
	
	
	
} else {
	image_index = 0;
}




if(hp < 1){
	for(var i=0; i<5; i++){ instance_create_depth(x, y, -8000, effSplatter); }
	instance_destroy();
}
