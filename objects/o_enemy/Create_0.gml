initialize_movement_entity(1, .5, o_solid);
initialize_hurtbox_entity();

image_speed = 0;
experience_worth_ = 5;
max_health_ = 2;
health_ = max_health_;

starting_state_ = noone;
state_ = starting_state_;

enum enemy {
	hit
}
