function playerInBlock(dir){
	
	if(pointInBlock(pc.x, pc.y)){ return true; }
	
	if(dir == 2){
		if(pointInBlock(pc.x+pc.xFat, pc.y-pc.yFat)){ return true; }
		if(pointInBlock(pc.x+pc.xFat, pc.y+pc.yFat)){ return true; }
	}
	
	if(dir == 4){
		if(pointInBlock(pc.x-pc.xFat, pc.y-pc.yFat)){ return true; }
		if(pointInBlock(pc.x-pc.xFat, pc.y+pc.yFat)){ return true; }
	}
	
	if(dir == 1){
		if(pointInBlock(pc.x-pc.xFat, pc.y-pc.yFat)){ return true; }
		if(pointInBlock(pc.x+pc.xFat, pc.y-pc.yFat)){ return true; }
	}
	
	if(dir == 3){
		if(pointInBlock(pc.x-pc.xFat, pc.y+pc.yFat)){ return true; }
		if(pointInBlock(pc.x+pc.xFat, pc.y+pc.yFat)){ return true; }
	}
	
	
	return false;
}