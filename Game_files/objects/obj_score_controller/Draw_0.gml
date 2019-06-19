/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C14D5BF
/// @DnDDisabled : 1
/// @DnDArgument : "code" "current_score = score;$(13_10)$(13_10)///Check room $(13_10)if(room == rm_highscore)$(13_10){$(13_10)	draw_text(room_width/2 - 85, room_height/2,"SCORE - "+string(curr_score))$(13_10)}$(13_10)else$(13_10){$(13_10)	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+70, "Score = " + string(current_score));$(13_10)}"


/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 16AE855B
/// @DnDDisabled : 1
/// @DnDArgument : "var" "curr_score"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22B621CF
/// @DnDDisabled : 1
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_highscore"
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7BA48E98
/// @DnDDisabled : 1
/// @DnDParent : 22B621CF
/// @DnDArgument : "code" "draw_text(room_width/2 - 85, room_height/2, "Your score was " + string(curr_score));"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 41B28F76
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57553469
/// @DnDDisabled : 1
/// @DnDParent : 41B28F76
/// @DnDArgument : "code" "draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+70, "Score = " + string(curr_score));"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22B829AA
/// @DnDBreak : 1

/// @DnDDisabled : 1
/// @DnDParent : 41B28F76
/// @DnDArgument : "var" "curr_score"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "50000"
/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 44108074
/// @DnDDisabled : 1
/// @DnDParent : 22B829AA
/// @DnDArgument : "room" "rm_win_state"
/// @DnDSaveInfo : "room" "b77c981c-6adf-4b97-aa6b-c9d01d85d106"