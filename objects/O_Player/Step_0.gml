//input reading

get_controls();


vaccumeCheck = keyboard_check_pressed( ord("F"));

//movement

//X movement
move_dir = rightkey - leftkey;


//speed calcs

x_spd = move_dir * move_spd;


//Y Movement/Gravity

y_spd += grav;

if (y_spd >= term_velocity){
	y_spd = term_velocity;
}

//Jump reseter
if (is_grounded){
	jump_counter = 0;
	jump_hold_time = 0;
} else {
	if (jump_counter = 0){
		jump_counter = 1; //EASY AND DIRTY FIX TO FUCKING MAKE IT SO THAT YOU CANT GET AN EXTRA JUMP
	}
}


//Jumping

if (jumpkeybuffer && jump_counter < max_jumps){
	
	//already jumped so you can reset the buffer
	jumpkeybuffer = false;
	jumpkeybuffertimer = 0;
	
	//jump count increaser
	jump_counter++;
	
	
	//set timer
	jump_hold_time = jump_hold_max[jump_counter-1];
	
}

//cutoff for jump height
if (!jumpkey){
	jump_hold_time = 0; //this cuts off the next conditional due to it setting it to 0
}

if (jump_hold_time > 0){
	y_spd = j_spd[jump_counter-1];
	//counter decreament
	jump_hold_time--;
}

//X Collision

if (place_meeting(x + x_spd, y, O_Wall)){ //checks for a collision
	while !place_meeting(x + sign(x_spd), y, O_Wall){
		x += sign(x_spd);
	}
	
	x_spd = 0;
}

x += x_spd;

//Y collision
	if place_meeting(x, y + y_spd, O_Wall) {
		while (!place_meeting(x, y+sign(y_spd), O_Wall)) {
			y += sign(y_spd);
		}
		
		//head collision
		if (y_spd < 0){
			jump_hold_time = 0;
		}

		y_spd = 0;
	}

	
//extra ground check just in case because it doesnt get auto reset to true

if (y_spd >= 0 && place_meeting(x,y+1,O_Wall)){
	is_grounded = true;
} else {
	is_grounded = false;
}


	
//Movement begins, LEAVE HERE MOVEMENT MUST BE CALCULATED BEFORE ACTUALLY MOVING

y += y_spd;


//ANIMATIONS

if (!is_grounded){

	sprite_index = S_PlayerFall;
	image_speed = 0;
	if (sign(y_spd) > 0) image_index = 1; else image_index = 0;

} else {

	image_speed = 1;
	
	}
	if (x_spd == 0 && !vaccumeCheck){
	
		sprite_index = S_Player;
	
	} else {
		
		sprite_index = S_PlayerRun;
		
	}



if (x_spd != 0) image_xscale = sign(x_spd);


//vaccume check
if vaccumeCheck{

	vaccuming = true
	sprite_index = S_PlayerVac;

}
if keyboard_check_released(ord("F")){
	vaccuming = false;	
}
