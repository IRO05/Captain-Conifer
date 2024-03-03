/// @description Insert description here
// You can write your code in this editor
if (taskComplete || death){
	
	room_goto(roomID);
	
} else {
	
	global.signID = "dirty";
	instance_create_depth(0,0, -9999, O_DialogueChild);
	
}

