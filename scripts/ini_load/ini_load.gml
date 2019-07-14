///@arg file_name;

global.load = true;
var _file_name = argument0;

ini_open(_file_name);

var _room_name = ini_read_string("level","room","");
global.start_x = ini_read_real("level","start_x",0);
global.start_y = ini_read_real("level","start_y",0);
global.player_health = ini_read_real("player","health", 1);
global.player_max_health = ini_read_real("player","max_health", 1);
global.player_stamina = ini_read_real("player","stamina", 1);
global.player_max_stamina = ini_read_real("player","max_stamina", 1);


ini_close();

if(_room_name == ""){
	show_error("No save data", false);
}

var _room = asset_get_index(_room_name);
room_goto(_room);

