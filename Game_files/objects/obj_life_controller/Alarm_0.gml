/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 09C89B97
/// @DnDArgument : "var" "curr_room"
curr_room = room;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4481E7EF
/// @DnDArgument : "code" "if(curr_room == room_lvl_1)$(13_10){$(13_10)	if(!instance_exists(obj_ship_enemy_shooter))$(13_10)	{$(13_10)		instance_create_depth(path1.xstart,path1.ystart,obj_main_player,obj_ship_enemy_shooter);$(13_10)	}$(13_10)}"
if(curr_room == room_lvl_1)
{
	if(!instance_exists(obj_ship_enemy_shooter))
	{
		instance_create_depth(path1.xstart,path1.ystart,obj_main_player,obj_ship_enemy_shooter);
	}
}