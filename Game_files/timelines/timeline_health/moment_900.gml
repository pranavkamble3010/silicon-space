/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 035914C5
/// @DnDArgument : "code" "$(13_10)if(room == room_lvl_1 and obj_main_player.x > 5000)$(13_10){$(13_10)instance_create_depth(obj_main_player.x+150,obj_main_player.y,obj_main_player.depth,obj_health_main_player)$(13_10)//alarm[0] = 300;$(13_10)}"

if(room == room_lvl_1 and obj_main_player.x > 5000)
{
instance_create_depth(obj_main_player.x+150,obj_main_player.y,obj_main_player.depth,obj_health_main_player)
//alarm[0] = 300;
}