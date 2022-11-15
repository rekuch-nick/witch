if(other.hurtTime > 0){ return; }

if(dis > 45){ dis = 45; }

var act = "Slash";

other.hurtTime = other.hurtTimeMax;
other.moveCD = 15;
other.shotCD += 10;

var dam = hpPow;

if(abs(x - other.x) > abs(y - other.y)){
	if(xLast < other.x && other.facing == 1){ dam *= 4; act = "Backstab";}
	if(xLast > other.x && other.facing == -1){ dam *= 4; act = "Backstab";}
}

other.hp -= dam;	

var s = act + " " + other.nam + " for " + string(dam);
addMessage(s);

