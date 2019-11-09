//@arg monster name
var _monster = argument0;

var _run_right = asset_get_index("s_player_" +string(_monster)+"_run_right");
var _run_up = asset_get_index("s_player_"+string(_monster)+"_run_up");
var _run_down = asset_get_index("s_player_"+string(_monster)+"_run_down");

var _attack_right = asset_get_index("s_player_"+string(_monster)+"_attack_right");
var _attack_up = asset_get_index("s_player_"+string(_monster)+"_attack_up");
var _attack_down = asset_get_index("s_player_"+string(_monster)+"_attack_down");

var _projectile_right = asset_get_index("s_player_"+string(_monster)+"_projectile_right");
var _projectile_up = asset_get_index("s_player_"+string(_monster)+"_projectile_up");
var _projectile_down = asset_get_index("s_player_"+string(_monster)+"_projectile_down");

//lookup sprites
sprite_[player.move, dir.right] = _run_right;
sprite_[player.move, dir.up] = _run_up;
sprite_[player.move, dir.left] = _run_right;
sprite_[player.move, dir.down] = _run_down;

sprite_[player.sword, dir.right] = _attack_right;
sprite_[player.sword, dir.up] = _attack_up;
sprite_[player.sword, dir.left] = _attack_right;
sprite_[player.sword, dir.down] = _attack_down;

sprite_[player.evade, dir.right] = s_player_2_roll_right;
sprite_[player.evade, dir.up] = s_player_2_roll_up;
sprite_[player.evade, dir.left] = s_player_2_roll_right;
sprite_[player.evade, dir.down] = s_player_2_roll_down;

sprite_[player.hit, dir.right] = _run_right;
sprite_[player.hit, dir.up] = _run_up;
sprite_[player.hit, dir.left] = _run_right;
sprite_[player.hit, dir.down] = _run_down;

sprite_[player.bomb, dir.right] = _run_right;
sprite_[player.bomb, dir.up] = _run_up;
sprite_[player.bomb, dir.left] = _run_right;
sprite_[player.bomb, dir.down] = _run_down;

sprite_[player.found_item, dir.right] = s_player_2_found_item;
sprite_[player.found_item, dir.up] = s_player_2_found_item;
sprite_[player.found_item, dir.left] = s_player_2_found_item;
sprite_[player.found_item, dir.down] = s_player_2_found_item;

sprite_[player.projectile, dir.right] = _projectile_right;
sprite_[player.projectile, dir.up] = _projectile_up;
sprite_[player.projectile, dir.left] = _projectile_right;
sprite_[player.projectile, dir.down] = _projectile_down;

sprite_[player.evolve, dir.right] = s_evolution_effect;
sprite_[player.evolve, dir.up] = s_evolution_effect;
sprite_[player.evolve, dir.left] = s_evolution_effect;
sprite_[player.evolve, dir.down] = s_evolution_effect;