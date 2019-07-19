global.one_second = game_get_speed(gamespeed_fps);
global.destroyed = [];
instance_create_layer(0,0,"Instances",o_input);


var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

global.player_max_health = 3;
global.player_health = global.player_max_health;
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;
global.player_start_position = i_game_start;
global.load = false;
global.start_x = noone;
global.start_y = noone;
global.zoom = false;

//evoutions
global.evolution[0] = noone;


//audio_play_sound(a_music, 10, true);

global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(global.view_width,global.view_height);

paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width()/view_wport[0];


item_index_ = 0;
global.item[0] = noone;
global.item[1] = noone;


inventory_create(6);
inventory_add_item(o_ring_item);
inventory_add_item(o_projectile_item);
inventory_add_item(o_bomb_item);
inventory_add_item(o_sword_item);


