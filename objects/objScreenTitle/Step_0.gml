


if(irandom_range(1, 180) == 1 ){ flashTime = 16; }

if(flashTime > 0){
	image_index = flashTime % 2 == 0 ? 1 : 2;
	flashTime --;
} else {
	image_index = 0;
}




if(pc.pressedStart || pc.pressedRoll){
	
	
	
	instance_destroy();
}