if health_ <= 0 exit;
if hurtbox_entity_can_be_hurt_by(other) {
	invincible_ = true;
	alarm[0] = global.one_second * 0.5;
	health_ -= other.damage_;
	state_ = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	create_animation_effect(s_hit_effect, x, y-8, 1, true);
	set_movement(_knockback_direction, other.knockback_);
	audio_play_sound(a_hit, 7, false);
	if(other.sprite_index == s_evolve_boom){
		experience_worth_ = 0;
	}
	if(other.destroy_on_contact_){
		instance_destroy(other);
	}

}

