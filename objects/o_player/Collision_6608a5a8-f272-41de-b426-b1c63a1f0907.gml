/// @description Hit logic
if hurtbox_entity_can_be_hurt_by(other){
		//screenshake off
		//add_screenshake(8,8);
}


if hurtbox_entity_can_be_hurt_by(other) && invincible_ == false {
	invincible_ = true;
	alarm[0] = global.one_second * 1;
	global.player_health -= other.damage_;
	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other.knockback_);
	state_ = player.hit;
	audio_play_sound(a_hurt, 6, false);
	if(other.destroy_on_contact_){
		instance_destroy(other);
	}
}
