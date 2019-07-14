/// @description Pickup Heart
if(!can_pickup_){
	exit;
}
instance_destroy();

//cap to max health
global.player_health = min(global.player_health+1,global.player_max_health);
audio_play_sound(a_collect_item, 2, false)