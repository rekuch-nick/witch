function playerGetInput(){
	gamepadCheck();
	
	
	xIn = 0;
	yIn = 0;
	
	
	if(keyboard_check(vk_left) || keyboard_check(ord("A")) ||
								gamepad_button_check(ww.gamepadID, gp_padl) || 
								gamepad_axis_value(ww.gamepadID, gp_axislh) < -.5 ){
		xIn --;
		facing = -1;
	}
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D")) ||
								gamepad_button_check(ww.gamepadID, gp_padr) || 
								gamepad_axis_value(ww.gamepadID, gp_axislh) > .5 ){
	
		xIn ++;
		facing = 1;
	}
	
	if(keyboard_check(vk_down) || keyboard_check(ord("S")) ||
								gamepad_button_check(ww.gamepadID, gp_padd) || 
								gamepad_axis_value(ww.gamepadID, gp_axislv) > .5 ){
		yIn ++;
	}
	
	if(keyboard_check(vk_up) || keyboard_check(ord("W")) ||
								gamepad_button_check(ww.gamepadID, gp_padu) || 
								gamepad_axis_value(ww.gamepadID, gp_axislv) < -.5 ){
		yIn --;
	}
	
	if(xIn != 0 || yIn != 0){
		xLast = xIn; yLast = yIn;
	}
	
	
	holdingRoll = keyboard_check(vk_space) || gamepad_button_check(ww.gamepadID, gp_face1);
	pressedRoll = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(ww.gamepadID, gp_face1);
	
	holdingCast = keyboard_check(ord("3")) || gamepad_button_check(ww.gamepadID, gp_face2);
	pressedCast = keyboard_check_pressed(ord("3")) || gamepad_button_check_pressed(ww.gamepadID, gp_face2);
	
	holdingChop = keyboard_check(ord("1")) || gamepad_button_check(ww.gamepadID, gp_face3);
	pressedChop = keyboard_check_pressed(ord("1")) || gamepad_button_check_pressed(ww.gamepadID, gp_face3);
	
	holdingBlock = keyboard_check(ord("2")) || gamepad_button_check(ww.gamepadID, gp_face4);
	pressedBlock = keyboard_check_pressed(ord("2")) || gamepad_button_check_pressed(ww.gamepadID, gp_face4);
	
	holdingStart = keyboard_check(vk_enter) || gamepad_button_check(ww.gamepadID, gp_start);
	pressedStart = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(ww.gamepadID, gp_start);
	
}