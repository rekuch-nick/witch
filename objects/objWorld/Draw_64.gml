return;

//find oldest message
var oldest = -1;
for(var i=pc.messageListMax-1; i>0; i--){
	if(pc.messageList[i] != ""){
		oldest = i; break;
	}
}
if(lastOldest == oldest){ textFade -= .01; } else { textFade = 1; }
lastOldest = oldest;





draw_set_halign(fa_right);
for(var i=0; i<pc.messageListMax; i++){
	var aa = camera_get_view_width(view_camera[0]);
	var bb = camera_get_view_height(view_camera[0]);
	var alp = 1;
	if(i == oldest){ alp = textFade; }
	
	draw_text_transformed_color(aa, bb - (i * 15), pc.messageList[i], .7, .7, 0, c_white, c_white, c_white,c_white, alp);
}
draw_set_halign(fa_left);
