depth = -y;
if health_ <= 0 && state_ != enemy.hit {
	instance_destroy();
}

if state_ != noone {
	event_user(state_);
}

if(o_player.state_ = o_player.player.evolve){

	//custom code for chasing
	var _direction = point_direction(x, y, o_player.x, o_player.y);
	var _x_speed = lengthdir_x(speed_,_direction);
	if(_x_speed != 0){
		image_xscale = sign(_x_speed);
	}

	add_movement_maxspeed(_direction, 0.125, 1);
	move_movement_entity(false);

	var _player = instance_place(x, y, o_player);
}