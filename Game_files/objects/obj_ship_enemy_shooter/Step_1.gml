/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DDC38F7
/// @DnDBreak : 1

/// @DnDArgument : "code" "$(13_10)$(13_10)$(13_10)if(distance_to_object(obj_main_player) < 300 && state == enemy_state.patrol)$(13_10)	state = enemy_state.attack;$(13_10)$(13_10)else if(distance_to_object(obj_main_player) > 330 && state == enemy_state.attack)$(13_10){$(13_10)	state = enemy_state.patrol;$(13_10)}"



if(distance_to_object(obj_main_player) < 300 && state == enemy_state.patrol)
	state = enemy_state.attack;

else if(distance_to_object(obj_main_player) > 330 && state == enemy_state.attack)
{
	state = enemy_state.patrol;
}