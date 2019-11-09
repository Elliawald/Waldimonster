/// @description zoom

if(global.zoom == true){
	var _target_height = approach(height_, target_zoom_height, zoom_speed_);
	var _target_width = approach(width_, target_zoom_width, zoom_speed_*2);
	camera_set_view_size(view_camera[0],_target_width,_target_height);
}


if(screenshake_ > 0){
	x += random_range(-screenshake_,screenshake_);
	y += random_range(-screenshake_,screenshake_);
	x = lerp(x, target_.x, 0.1);
	y = lerp(y, target_.y-8, 0.1);

	camera_set_view_pos(view_camera[0], x - width_/2, y - height_/2);
}

