function getStoryOutcome(s){
	
	
	
	var c = string_char_at(s, 0);
	
	
	if(c == ">"){
		s = string_delete(s, 1, 1);
		
		var r = asset_get_index(s);
		
		
		
		
		room_goto(r);
		pc.gotoStart = true;
		
		
		
		if(r == Room2){ pc.scene = 3; pc.talk = true; }
		
	}
	
	
	

}