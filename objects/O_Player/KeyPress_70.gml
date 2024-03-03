/// @description Insert description here
// You can write your code in this editor


sprite_index = S_PlayerVac;

if (place_meeting(x,y, O_Enemy)){

	enemyID = instance_nearest(x,y, O_Enemy);
	instance_destroy(enemyID);

}
