



var hpPercent = hp / hpMax;
draw_rectangle_color(0, 0, 300, 25, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(0, 0, 300 * hpPercent, 25, c_red, c_maroon, c_red, c_maroon, false);


var mpPercent = mp / mpMax;
draw_rectangle_color(0, 26, 300, 40, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(0, 26, 300 * mpPercent, 40, c_aqua, c_blue, c_aqua, c_blue, false);





draw_rectangle_color(8, 700, 68, 760, c_black, c_black, c_black, c_black, false);
draw_sprite_stretched(subWeapon, 0, 8, 700, 60, 60);