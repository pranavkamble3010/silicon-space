/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 236C591A
/// @DnDInput : 3
/// @DnDArgument : "expr" "80"
/// @DnDArgument : "expr_1" "400"
/// @DnDArgument : "expr_2" "800"
/// @DnDArgument : "var" "spawnrate1"
/// @DnDArgument : "var_1" "spawnrate2"
/// @DnDArgument : "var_2" "spawnrate3"
spawnrate1 = 80;
spawnrate2 = 400;
spawnrate3 = 800;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 793F7429
/// @DnDInput : 3
/// @DnDArgument : "steps" "spawnrate1"
/// @DnDArgument : "steps_1" "spawnrate2"
/// @DnDArgument : "steps_2" "spawnrate3"
/// @DnDArgument : "alarm_1" "1"
/// @DnDArgument : "alarm_2" "2"
alarm_set(0, spawnrate1);
alarm_set(1, spawnrate2);
alarm_set(2, spawnrate3);