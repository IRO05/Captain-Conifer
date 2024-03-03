upkey = keyboard_check_pressed(ord("W")) + gamepad_button_check(0, gp_padu);
	///upkey = clamp(upkey, 0,1);
downkey = keyboard_check_pressed(ord("S")) + gamepad_button_check(0, gp_padd);
	//downkey = clamp(downkey, 0,1);
confirmkey = keyboard_check_pressed(vk_space) + gamepad_button_check(0, gp_face1);

op_length = array_length(option[menu_level]);

pos += downkey - upkey;
if (pos >= op_length){
	pos = 0;
}
if (pos < 0){
	pos = op_length-1;
}

if (confirmkey) {
	//transistions
	var _toppanator = menu_level;
	
	switch(menu_level){
		case 0:
			switch(pos){
				//transistion to the startup room
				case 0:
					room_goto_next();
					break;
				//settngs screen
				case 1:
					menu_level = 1;
					break;
				//closing
				case 2:
					game_end();
					break;
				}
			break;
			
		case 1:
			switch(pos){
				case 0:
				//window size
					window_set_fullscreen(!checker);
					checker = !checker;
					break;
				//controls
				case 1:
					room_goto_next();
					break;
				//closing
				case 2:
					menu_level = 0;
					break;
				}
			break;
	}
	if (_toppanator != menu_level) {
		pos = 0;
	}
	op_length = array_length(option[menu_level]);
}