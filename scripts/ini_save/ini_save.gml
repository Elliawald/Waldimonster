///@arg filename
var _filename = argument0;
ini_open(_filename);

ini_write_string("level", "room", room_get_name(room));
ini_write_real("level", "start_x", global.player_start_position.x);
ini_write_real("level", "start_y", global.player_start_position.y);

ini_close();