/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7663F772
/// @DnDArgument : "code" "$(13_10)$(13_10)if(can_generate == 1)$(13_10){$(13_10)	instance_create_depth(x,y,obj_ship_enemy_generator.depth,obj_enemy_ground);$(13_10)	can_generate = 0;$(13_10)	//alarm[0] = random_range(1,200);$(13_10)	can_generate = random_range(1,60);$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	can_generate--;$(13_10)	if(can_generate < 0 ) can_generate = 1;$(13_10)}$(13_10)$(13_10)$(13_10)if(instance_place(x+0,y+0,obj_main_player) > 0)$(13_10){$(13_10)	instance_destroy(obj_main_player);$(13_10)	health = health - 0.50;$(13_10)	room_restart();$(13_10)}"


if(can_generate == 1)
{
	instance_create_depth(x,y,obj_ship_enemy_generator.depth,obj_enemy_ground);
	can_generate = 0;
	//alarm[0] = random_range(1,200);
	can_generate = random_range(1,60);
}

else
{
	can_generate--;
	if(can_generate < 0 ) can_generate = 1;
}


if(instance_place(x+0,y+0,obj_main_player) > 0)
{
	instance_destroy(obj_main_player);
	health = health - 0.50;
	room_restart();
}