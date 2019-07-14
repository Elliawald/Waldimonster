initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();
acceleration_ = 0.6;
max_speed_ = 2;
roll_speed_ = 2;
image_speed = 0;
speed_ = 2;
direction_facing_ = dir.right; 
roll_direction_ = dir.right;

alarm[1] = global.one_second;

direction_ = 0;


enum player {
	 move,
	 sword,
	 evade,
	 bomb,
	 bow,
	 found_item,
	 hit
}

//has to be this order
enum dir {
	 right,
	 up,
	 left,
	 down
}

state_ = player.move;
starting_state_ = player.move;
found_item_sprite_ = noone;

//lookup sprites
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;

sprite_[player.hit, dir.right] = s_player_run_right;
sprite_[player.hit, dir.up] = s_player_run_up;
sprite_[player.hit, dir.left] = s_player_run_right;
sprite_[player.hit, dir.down] = s_player_run_down;

sprite_[player.bomb, dir.right] = s_player_run_right;
sprite_[player.bomb, dir.up] = s_player_run_up;
sprite_[player.bomb, dir.left] = s_player_run_right;
sprite_[player.bomb, dir.down] = s_player_run_down;

sprite_[player.found_item, dir.right] = s_player_found_item;
sprite_[player.found_item, dir.up] = s_player_found_item;
sprite_[player.found_item, dir.left] = s_player_found_item;
sprite_[player.found_item, dir.down] = s_player_found_item;
