upkey = keyboard_check_pressed(ord("W")) + gamepad_button_check(0, gp_padu);
	///upkey = clamp(upkey, 0,1);
downkey = keyboard_check_pressed(ord("S")) + gamepad_button_check(0, gp_padd);
	//downkey = clamp(downkey, 0,1);
confirmkey = keyboard_check_pressed(vk_space) + gamepad_button_check(0, gp_face1);