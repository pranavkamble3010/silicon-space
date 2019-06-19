/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 609F131E
/// @DnDArgument : "code" "obj_health = 5;$(13_10)$(13_10)damage_vulnerability = 0.5;$(13_10)$(13_10)reload = 0;$(13_10)not_on_path = false;$(13_10)//can_shhot = 0;$(13_10)$(13_10)path_start(path1,7,path_action_continue,false);$(13_10)$(13_10)alarm[0] = 40;$(13_10)$(13_10)$(13_10)enum enemy_state$(13_10){$(13_10)	patrol,$(13_10)	attack$(13_10)	//collision_avoidance$(13_10)}$(13_10)$(13_10)$(13_10)state = enemy_state.patrol;$(13_10)"
obj_health = 5;

damage_vulnerability = 0.5;

reload = 0;
not_on_path = false;
//can_shhot = 0;

path_start(path1,7,path_action_continue,false);

alarm[0] = 40;


enum enemy_state
{
	patrol,
	attack
	//collision_avoidance
}


state = enemy_state.patrol;