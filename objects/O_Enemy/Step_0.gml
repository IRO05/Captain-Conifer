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
	
//ANIMATIONS
if (!is_grounded){

	sprite_index = S_EnemyFall;
	image_speed = 0;
	if (sign(y_spd) > 0) image_index = 1; else image_index = 0;

} else {

	image_speed = 1;
	if (x_spd == 0){
	
		sprite_index = S_Enemy;
	
	} else {
		
		sprite_index = S_EnemyRun;
		
	}

}

if (x_spd != 0) image_xscale = sign(x_spd);



// hp check
if (hp < 1){
	
	instance_destroy();

}



closeness = distance_to_object(O_Player);
withinRadius = (closeness <= alert_dis);


if (withinRadius){
	
	alert = true;

} else {

	alert = false;
	sprite_index = S_Enemy;

}
if (alert){

	move_towards_point(x+sign(O_Player.x - x), y, 1);
	

} else {

	move_towards_point(x,y,0);

}

if (place_meeting(x,y,O_Player)){

	playerID = instance_nearest(x,y, O_Player);
	if (playerID.vaccuming){
	
		global.trashTotal -=1;
		instance_destroy();
	
	}
	

}
