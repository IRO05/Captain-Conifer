/// @description Insert description here
// You can write your code in this editor
//fullscreen check
if (keyboard_check(vk_f8)){
	window_set_fullscreen(!window_get_fullscreen());
}

if (!instance_exists(O_Player)) { exit; } 

//camera size
var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

//camera target coords
var _camX = O_Player.x - _camWidth/2;
var _camY = O_Player.y - _camHeight/2;

//camera constraints
_camX = clamp(_camX, 0, room_width- _camWidth);
_camY = clamp(_camY, 0, room_height- _camHeight);




//camera coordinate setter
final_cam_x += (_camX - final_cam_x) * trail_speed; //set to just _camX if you want it to keep player in center always
final_cam_y += (_camY - final_cam_y) * trail_speed;



//camera coords
camera_set_view_pos(view_camera[0], final_cam_x, final_cam_y);