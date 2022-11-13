event_inherited();


//draw_text(30, 360, display.msg);

draw_text_transformed_color(30, 340, display.hed, 1.4, 1.4, 0, c_gray, c_gray, c_gray, c_gray, 1);

draw_text(30, 390, display.msg);



for(var i=0; i<cursorMax; i++){
	if(i == cursor){
		draw_set_alpha(.4);
		draw_rectangle_color(20 + i*420, 715, 430 + i*420, 759, choose(c_yellow, c_orange), choose(c_yellow, c_orange), choose(c_yellow, c_orange), choose(c_yellow, c_orange), false);
		draw_set_alpha(1);
	}
	
	
	draw_text(30 + i*420, 720, display.rsp[i]);
}