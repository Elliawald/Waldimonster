initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();
acceleration_ = 0.6;
max_speed_ = 2;
roll_speed_ = 2;
image_speed = 0;
speed_ = 2;
direction_facing_ = dir.right; 
roll_direction_ = dir.right;
evolution_ = 1;
evolution_level_ = 1;
experience_points_ = 0;
experience_level_up_points = 3;
cam_start_ = 1;

alarm[1] = global.one_second;

melee_attack_ = s_tongue_hitbox;

direction_ = 0;
action_ = noone;

enum player {
	 move,
	 sword,
	 evade,
	 bomb,
	 projectile,
	 found_item,
	 hit,
	 evolve
}

enum monster_name {
	 basic_blob,
	 blob,
	 dog,
	 frog
}

//has to be this order
enum dir {
	 right,
	 up,
	 left,
	 down
}

enum action{
	one, 
	two
}

state_ = player.move;
starting_state_ = player.move;
found_item_sprite_ = noone;
monster_ = monster_name.blob;

get_sprites(monster_);
