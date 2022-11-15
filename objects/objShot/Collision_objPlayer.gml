if(pc.hurtTime > 0){ return; }
if(pc.blockTime > 0 ||
			( pc.rollTime > 0 && (pc.xIn != 0 || pc.yIn != 0) )
			){
	instance_create_depth(x, y, depth, effShot);
	instance_destroy();
	return;
}

playerHit(id);

instance_destroy();

