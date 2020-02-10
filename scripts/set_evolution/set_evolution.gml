///@arg evolution_level
var _evolution_level = argument0;

//evolve depending on stats and exp

if(_evolution_level == 1){
	return o_player.monster_name.dog;
}
if(_evolution_level == 2){
	return o_player.monster_name.owl;
}
if(_evolution_level == 3){
	return o_player.monster_name.blob;
}


//else
return o_player.monster_name.blob;