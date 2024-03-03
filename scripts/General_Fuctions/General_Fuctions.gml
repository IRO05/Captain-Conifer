// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function setup(){
	buffer = 8;
	
	jumpkeybuffer = 0;
	jumpkeybuffertimer = 0;
	
}

function get_controls(){
	//directions
	rightkey = keyboard_check(ord("D")) + gamepad_button_check(0, gp_padr);
		rightkey = clamp(rightkey, 0,1);
	leftkey = keyboard_check(ord("A")) + gamepad_button_check(0, gp_padl);
		leftkey = clamp(leftkey, 0,1);
	//actions
	jumpkey_pressed = keyboard_check_pressed(vk_space) + gamepad_button_check_pressed(0,gp_face1);
		jumpkey_pressed = clamp(jumpkey_pressed, 0,1);
	jumpkey = keyboard_check(vk_space) + gamepad_button_check(0,gp_face1);
		jumpkey = clamp(jumpkey, 0,1);
		
	if (jumpkey_pressed) {
		jumpkeybuffertimer = buffer;
	}
	if (jumpkeybuffertimer > 0){
		jumpkeybuffer = 1;
		jumpkeybuffertimer--;
	} else {
		jumpkeybuffer = 0;
	}
}