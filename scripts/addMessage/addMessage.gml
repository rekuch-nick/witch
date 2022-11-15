function addMessage(s){
	
	
	for(var i=1; i<pc.messageListMax; i++){
		pc.messageList[i - 1] = pc.messageList[i];
	}
	pc.messageList[pc.messageListMax - 1] = s;
}