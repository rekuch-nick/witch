if(instance_number(objScreen) > 0){ return; }

if(firstFrame){
	firstFrame = false;
	
	xSpeed = moveSpeed * pc.xLast;
	ySpeed = moveSpeed * pc.yLast;
	if(xSpeed != 0 && ySpeed != 0){
		xSpeed = floor(xSpeed * .75);
		ySpeed = floor(ySpeed * .75);
	}
	
}

xLast = x;
yLast = y;

x += xSpeed;
y += ySpeed;

image_angle += rot;


dis -= abs(xSpeed) + abs(ySpeed);
if(pointInBlock(x, y)){ dis = 0; }


if(dis < 1){
	instance_destroy();
}