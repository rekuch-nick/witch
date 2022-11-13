function stringInsertBreaks(s){
	
	var freq = 60;
	
	if(string_length(s) < freq){ return s; }
	
	var i = 0;
	var j = 0;
	while(true){
		i ++; j ++;
		if(i >= string_length(s)){ return s; }
		
		var c = string_char_at(s, i);
		if(c == "\n"){ j = 0; }
		
		if(j >= freq && c == " "){
			s = string_insert("\n", s, i+1);
			i ++;
			j = 0;
		}
	}

}