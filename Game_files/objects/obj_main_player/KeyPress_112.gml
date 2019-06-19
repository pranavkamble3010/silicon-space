/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 227AE7AE
/// @DnDDisabled : 1
/// @DnDArgument : "xpos" "room_width - 40"
/// @DnDArgument : "ypos" "room_height - 40"
/// @DnDArgument : "objectid" "obj_level_exit"
/// @DnDArgument : "layer" ""Instances_1""
/// @DnDSaveInfo : "objectid" "b6ac5f64-2606-486f-b60d-69de82144829"


/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 3E2DEFEE
/// @DnDBreak : 1

/// @DnDDisabled : 1
/// @DnDArgument : "x" "obj_level_exit.x - 100"
/// @DnDArgument : "y" "obj_level_exit.y - 70"


/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 42E69BFB
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 3F995E43
/// @DnDDisabled : 1
/// @DnDArgument : "var" "1"
/// @DnDArgument : "value" "obj_main_player.x"