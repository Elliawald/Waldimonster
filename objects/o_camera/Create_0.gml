target_ = o_player;
if(instance_exists(o_player)){
	x = target_.x;
	y = target_.y;
}

width_ = camera_get_view_width(view_camera[0]); 
height_ = camera_get_view_height(view_camera[0]);
scale_ = view_wport[0] / width_;
