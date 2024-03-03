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

//center player on room start
final_cam_x = _camX;
final_cam_y = _camY;