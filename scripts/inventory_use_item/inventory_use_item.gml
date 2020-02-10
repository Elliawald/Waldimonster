///@arg input
///@arg item
///@arg action

var _input = argument0;
var _item = argument1;
var _action = argument2;

if(_input){
	var _target_x = x + lengthdir_x(8, direction_facing_*90);
	var _target_y = y + lengthdir_y(8, direction_facing_*90);
	var _interactable = instance_place(_target_x,_target_y,o_interactable);
	if(_interactable && _interactable.activatable_){
		with(_interactable){
			event_user(interactable.activatable);
		}
	}else if(instance_exists(_item) && global.player_stamina >= _item.cost_){
		if(_item.show_amount_){
			if(_item.amount_ > 0){
				_item.amount_ -= 1;
			}else{
				exit;
			}
		}
		state_ = _item.action_;
		object_set_sprite(o_projectile, _item.sprite_index)
		action_ = _action;
		global.player_stamina = max(0,global.player_stamina - _item.cost_);
		alarm[1] = global.one_second;
		image_index = 0;
		
	}
}
