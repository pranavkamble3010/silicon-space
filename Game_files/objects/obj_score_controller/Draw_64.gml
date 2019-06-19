/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 6EFB6EF3
/// @DnDArgument : "var" "curr_score"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
curr_score = __dnd_score;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E6DA7EF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_highscore"
if(room == rm_highscore)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6C58C8BE
	/// @DnDParent : 0E6DA7EF
	/// @DnDArgument : "code" "$(13_10)if(curr_score > 0)$(13_10)	draw_text(room_width/2 - 85, room_height/2, "Your score was " + string(curr_score));$(13_10)"
	
	if(curr_score > 0)
		draw_text(room_width/2 - 85, room_height/2, "Your score was " + string(curr_score));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 22EC644E
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2780552D
	/// @DnDParent : 22EC644E
	/// @DnDArgument : "code" "draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+70, "Score = " + string(curr_score));"
	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+70, "Score = " + string(curr_score));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56470AA5
	/// @DnDDisabled : 1
	/// @DnDParent : 22EC644E
	/// @DnDArgument : "var" "curr_score"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "50000"
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 130E108A
	/// @DnDDisabled : 1
	/// @DnDParent : 56470AA5
	/// @DnDArgument : "room" "rm_win_state"
	/// @DnDSaveInfo : "room" "b77c981c-6adf-4b97-aa6b-c9d01d85d106"
}