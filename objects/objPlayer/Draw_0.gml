if(blockTime > 0){
	var x1 = x - xFat;
	if(facing == 1){ x1 = x; }
	var x2 = x1 + xFat;
	draw_set_alpha(.5);
	draw_rectangle_color(x1, y-yFat*2, x2, y+yFat*2, choose(c_aqua, c_blue), choose(c_aqua, c_blue), choose(c_aqua, c_blue), choose(c_aqua, c_blue), false);
	draw_set_alpha(1);
}

draw_self();