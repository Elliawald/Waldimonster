/// @description Evolve State
speed_ = 0;
image_speed = 0.5;
invincible_ = true;
depth = -y;

global.zoom = true;

if(animation_hit_frame(image_number - 1)){	
	global.zoom = false;	
	var _inst_monster = instance_create_layer(x,y,"Instances",o_player_blob);
	_inst_monster.experience_level_up_points = experience_level_up_points*experience_level_up_points;
	_inst_monster.evolution_ = 0;
	alarm[0] = global.one_second*4;
	_inst_monster.invincible_ = true;
	_inst_monster.alarm[0] = global.one_second*3;
	global.player_max_health++;
	global.player_max_stamina++;
	global.player_health = global.player_max_health;
	global.player_stamina = global.player_max_stamina;
	camera_set_view_size(view_camera[0], global.view_width, global.view_height);
	create_animation_effect(boom_reference,x,y,0.6,true);
	audio_play_sound(a_explosion,1,false);
	create_hitbox(s_evolve_boom,x,y,0,4,[o_enemy,o_grass],99,20);
	instance_destroy();
}