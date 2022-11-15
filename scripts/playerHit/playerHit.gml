function playerHit(obj){
	
	pc.hurtTime = pc.hurtTimeMax;
	
	var hDisIsMax = abs(obj.x - pc.x) >= abs(obj.y - pc.y);
	if(hDisIsMax){
		var dir = pc.x > obj.x ? 1 : -1;
		
		pc.xPush = obj.kbPow * dir;
		
	} else {
		var dir = pc.y > obj.y ? 1 : -1;
		
		pc.yPush = obj.kbPow * dir;
		
	}
	
	var dam = obj.hpPow;
	pc.hp -= dam;
	
}