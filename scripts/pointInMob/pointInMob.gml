function pointInMob(a, b){
	if(a < 0 || b < 0 || a >= room_width || b >= room_height){ return true; }
	return collision_point(a, b, objMob, true, true);
}