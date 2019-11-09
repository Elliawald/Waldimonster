///@arg evolution_level
///@arg monster name
var _evolution_level = argument0;
var _monster = argument1;

//evolve depending on stats and exp

if(_monster == 0){
	return o_player.monster_name.dog;
	
}else{
	return o_player.monster_name.blob;
}