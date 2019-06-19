/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 084D74A8
/// @DnDArgument : "alpha" "0"
image_alpha = 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 23151364
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "0"
x = room_width/2;
y = 0;

/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 0B3D9DDA
/// @DnDDisabled : 1
/// @DnDApplyTo : e4b38eed-66cf-49b7-989e-7a8d61b59223
/// @DnDArgument : "var" "player_score"
/// @DnDArgument : "var_temp" "1"


/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 3C9B3F66
/// @DnDDisabled : 1
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "room_height / 2"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3FE23830
/// @DnDDisabled : 1
/// @DnDArgument : "code" "draw_text(room_width/2, room_height/2, "SCore = "+string(player_score));"