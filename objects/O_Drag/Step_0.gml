/// @description Insert description here
// You can write your code in this editor
key_check = keyboard_check_pressed( ord( "E" ));

if (grabbed){

	if (key_check){
		
		x_acc = O_Player.x_spd/2;
		grabbed = false;
		
	}
		
	x = O_Player.x;
	y = O_Player.y-sprite_get_height(O_Player.sprite_index);
	
} else {

	if (!place_meeting(x,y+2,O_Wall)){
	
		x += x_acc;
		y += grav;
	
	}

}

global.touchCheck = (grabbed == false && place_meeting(x,y,O_Pedastal) && grabable);

if (global.touchCheck){
	global.trashTotal -= 25;
	grabbed = false;
	grabable = false;
	global.touchCheck = false;
	


}
	
