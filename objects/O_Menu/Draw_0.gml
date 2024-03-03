//draw the bg
//get width and height
draw_set_font(global.font_main);

var _newwidth = 0; 

for (var i = 0; i < op_length; i++){
	var _optionwidth = string_width(option[menu_level,i]);
	_newwidth = max(_newwidth, _optionwidth);
}

width = _newwidth + op_border*2
height = op_border*2 + string_height(option[0,0]) + (op_length-1)*op_space; 


//centering the menu

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(0)/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(0)/2 - height/2;

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height,0, c_white, .75);



//set font style


draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++){
	var _colorhighlight = c_white;
	if (pos == i){
		_colorhighlight = c_red;
	}
	draw_text_color(x+op_border, y+op_border+(op_space*i), option[menu_level, i],_colorhighlight,_colorhighlight,_colorhighlight,_colorhighlight,1);
	
}
