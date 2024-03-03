/// @description Insert description here
// You can write your code in this editor
depth = -999;

if(place_meeting(x, y, O_Player)){


	if(instance_exists(O_DialogueParent)){
			return;
	}
	else {
		
		instance_create_depth(0,0, -9999, O_DialogueSampleA);
	
	}
}

