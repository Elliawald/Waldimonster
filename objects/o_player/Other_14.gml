/// @description  projectile
speed_ = 0;
var _projectile_speed = 0.7;
image_speed = _projectile_speed;
if(animation_hit_frame(3)){
	image_speed = 0;
	var _released = false;
	if(action_ == action.one){
		_released = !o_input.action_one;
	}else{
		_released = !o_input.action_two_;
	}
	
	if(_released){
		image_speed = _projectile_speed;
		audio_play_sound(a_swipe,2,false);
		//create the arrow
	var _arrow = instance_create_layer(x, y+8, "Instances", o_blubber);
	_arrow.direction = direction_facing_ * 90;
	_arrow.image_angle = direction_facing_ * 90;
	_arrow.speed = 0.5;
	
		switch direction_facing_ {
		case dir.right: _arrow.y -= 4; break;
			case dir.left: _arrow.y -= 4;	break;	
			case dir.up: _arrow.y -= 2;	break;	
			default: break;
		}
	}
	
}

if(animation_hit_frame(image_number - 1)){
 state_ = player.move;
 image_index =  0;
}