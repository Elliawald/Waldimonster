depth = -bbox_bottom+20;

wall_ = instance_create_layer(x-8,y-8, "Instances", o_solid);
if(is_in_destroyed_list(id)){
	instance_destroy();
	instance_destroy(wall_);
}