if(pc.xIn == 0 && pc.yIn == 0){ inputReady = true; }

if(inputReady){
	if(pc.xIn > 0 || pc.yIn > 0){
		cursor ++;
		if(cursor >= cursorMax){ cursor = 0; }
		inputReady = false;
	}

	if(pc.xIn < 0 || pc.yIn < 0){
		cursor --;
		if(cursor < 0){ cursor = cursorMax - 1; }
		inputReady = false;
	}
	
}


if(pc.pressedStart || pc.pressedRoll){
	
	if(display.nxt[cursor] == -1){
		getStoryOutcome(display.hpn[cursor]);
		
		
		instance_destroy(f);
		instance_destroy();
		
		pc.skipInFrame = true;
	} else {
		
		line = display.nxt[cursor];
		display = getStory(pc.scene, line);
		cursor = 0;
		cursorMax = array_length(display.rsp);
		display.msg = stringInsertBreaks(display.msg);
		f.sprite_index = display.pic;
		
	}
	
	
}