///@arg x
///@arg y
if(!o_game.paused_){
	exit;
}
var _x = argument0; 
var _y = argument1;
var _array_size = array_length_1d(global.inventory);

var x_level = 0;
var x_level2 = 0;

for(var i=0;i<_array_size;i++){
	var _box_x = _x+i*32;
	var _box_y =_y;	
	
	if(i > 8){
		_box_y =_y+32;
		_box_x = _x+x_level*32;
		x_level++;
		if(i > 17){
			_box_y =_y+64;
			_box_x = _x+x_level2*32;
			x_level2++;
		}	
	}
	
	draw_sprite(s_inventory_box,0,_box_x,_box_y)

	var _item = global.inventory[i];
	if(instance_exists(_item)){
		draw_sprite(_item.sprite_,0,_box_x+16,_box_y+16);
			if(_item.show_amount_ == true){
				draw_text(_box_x+20,_box_y+4,string(_item.amount_));
			}
	}
	
	if(i == item_index_){
		draw_sprite(s_pause_cursor, image_index/8, _box_x,_box_y);
		if(instance_exists(_item)){
			draw_text(60,148, _item.description_);
			var _description_height = string_height(_item.description_);
			draw_text(60, 138,"Stamina cost: "+string(_item.cost_));
		}
	}			
}

draw_sprite(s_inventory_box, 0, 4, 4);
draw_sprite(s_inventory_box, 0, 36, 4);
var _item = global.item[0];
if(instance_exists(_item)){
	var _box_x = 4;
	var _box_y = 4;
	draw_sprite(_item.sprite_, 0,_box_x+16,_box_y+16);
	
	if(_item.show_amount_ == true){
		draw_text(_box_x+20,_box_y+4,string(_item.amount_));
	}
}
var _item = global.item[1];
if(instance_exists(_item)){
	var  _box_x = 36;
	var _box_y = 4;
	draw_sprite(global.item[1].sprite_, 0,_box_x+16,_box_y+16);
	if(_item.show_amount_ == true){
		draw_text(_box_x+20,_box_y+4,string(_item.amount_));
	}
}
