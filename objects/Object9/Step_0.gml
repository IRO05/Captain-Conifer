if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left){
		with (instance_create_depth(x,y,-999999, O_DialogueParent)){
			scr_text("testing one two three");
			scr_text("testing one two four");
		}
	}