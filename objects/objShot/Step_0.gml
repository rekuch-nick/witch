if(instance_number(objScreen) > 0){ return; }
if(firstFrame){
	firstFrame = false;
	
	var angle = arctan2(yt - y, xt - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
}





x += xSpeed;
y += ySpeed;

dis -= abs(xSpeed) + abs(ySpeed);
if(dis < 1 || pointInBlock(x, y)){
	instance_destroy();
}