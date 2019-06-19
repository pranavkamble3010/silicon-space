/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 75465AC1
/// @DnDArgument : "code" "//this alarm is for checking every 300 frames if instance exists, and respwan if it does not exist.$(13_10)alarm[0] = 300;"
//this alarm is for checking every 300 frames if instance exists, and respwan if it does not exist.
alarm[0] = 300;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 6268C4E8
/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
/// @DnDArgument : "lives" "3"
with(obj_life_controller) {

__dnd_lives = real(3);
}