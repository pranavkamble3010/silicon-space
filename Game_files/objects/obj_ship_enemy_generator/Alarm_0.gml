/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A444ADD
/// @DnDArgument : "code" "$(13_10)//if(distance_to_object(obj_main_player) < 300)$(13_10)//{$(13_10)	instance_create_depth(x,y,obj_ship_enemy_generator.depth,obj_enemy_ground);$(13_10)	alarm[0] = random_range(0,200);$(13_10)//}$(13_10)"

//if(distance_to_object(obj_main_player) < 300)
//{
	instance_create_depth(x,y,obj_ship_enemy_generator.depth,obj_enemy_ground);
	alarm[0] = random_range(0,200);
//}