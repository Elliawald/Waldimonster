create_animation_effect(s_death_effect, x, y-8, .6, true);
if chance(.75) {
	var _item = choose(o_gem_pickup, o_heart_pickup);
	instance_create_layer(x, y-8, "Instances", _item);
}

o_player.experience_points_ += experience_worth_;
