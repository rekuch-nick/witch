function getStory(s, l){
	
	if(s == 1){ /// intro
		
		if(l == 1){
			return {
				msg: "At long last, the trail of the Iron Dragon.",
				pic: imgTalkPlayer01,
				hed: "Gary:",
				rsp: [".."],
				nxt: [2],
				hpn: [""],
			}
		}
		
		
		if(l == 2){
			return {
				msg: "At the end of this trail, I will finlly have my revenge!",
				pic: imgTalkPlayerFocus,
				hed: "Gary:",
				rsp: [".."],
				nxt: [3],
				hpn: [""],
			}
		}
		
		if(l == 3){
			return {
				msg: "Do you actually think killing it will bring you peace?",
				pic: imgTalkUrma,
				hed: "Urma:",
				rsp: ["yes", "no", "maybe"],
				nxt: [4, 5, 6],
				hpn: ["", "", ""],
			}
		}
		
		if(l == 4){
			return {
				msg: "There will never be peace in this world. Not for me, not for you. But avenging my family might just bring me a moment of it, which is the best deal I'm ever going to get.",
				pic: imgTalkPlayer01,
				hed: "Gary:",
				rsp: [".."],
				nxt: [-1],
				hpn: [""],
			}
		}
		
		if(l == 5){
			return {
				msg: "Nothing will bring back my family, not even bloody justice. I seek it all the same.",
				pic: imgTalkPlayer01,
				hed: "Gary:",
				rsp: [".."],
				nxt: [-1],
				hpn: [""],
			}
		}
		
		if(l == 6){
			return {
				msg: "Who knows. Who cares? The Iron Dragon killed my family, and now I'll kill it. Peace isn't even part of the equation.",
				pic: imgTalkPlayer01,
				hed: "Gary:",
				rsp: [".."],
				nxt: [-1],
				hpn: [""],
			}
		}
		
		
		
		
		
	}
	
	if(s == 2){ // leave room1
		
		if(l == 1){
			return {
				msg: "Head into the cave?",
				pic: imgBlank,
				hed: "",
				rsp: ["yes", "no"],
				nxt: [-1, -1],
				hpn: [">Room2", ""],
			}
		}
		
	}
	
	
	
	if(s == 3){ // Urma asks about spells
		
		if(l == 1){
			return {
				msg: "I've got a terrible feeling about all this. Do you feel it too?",
				pic: imgTalkUrma,
				hed: "Urma:",
				rsp: [".."],
				nxt: [2],
				hpn: [""],
			}
		}
		
		if(l == 2){
			return {
				msg: "It's one of the Iron Dragon's powers, its very presence inspires magical fear.",
				pic: imgTalkPlayer01,
				hed: "Gary:",
				rsp: [".."],
				nxt: [3],
				hpn: [""],
			}
		}
		
		if(l == 3){
			return {
				msg: "Like a frog with yellow spots?",
				pic: imgTalkUrma,
				hed: "Urma:",
				rsp: ["yes", "no"],
				nxt: [4, 5],
				hpn: [""],
			}
		}
		
		if(l == 4){
			return {
				msg: "Exactly. But isntead of poison, it has metal claws and firey breath.",
				pic: imgTalkPlayer01,
				hed: "Gary:",
				rsp: [".."],
				nxt: [-1],
				hpn: [""],
			}
		}
		
		if(l == 5){
			return {
				msg: "This is no fog we're hunting, take it seriously.",
				pic: imgTalkPlayer01,
				hed: "Gary:",
				rsp: [".."],
				nxt: [-1],
				hpn: [""],
			}
		}
		
	}
	
	
}