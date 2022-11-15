if(hurtTime > 0 && hurtTime % 2 == 1){
	draw_set_alpha(.4);
	draw_rectangle_color(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
}

if(hp < hpMax){
	var x1 = x-abs(sprite_width/2);
	var y1 = y + sprite_height/2-4;
	var y2 = y1 + 5;
	var xM = abs(sprite_width);
	var x2 = x1 + xM * (hp/hpMax);
	draw_rectangle_color(x1, y1, x2, y2, c_red, c_maroon, c_red, c_maroon, false);
}

draw_self();
