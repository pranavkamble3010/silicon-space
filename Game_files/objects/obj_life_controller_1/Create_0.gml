/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 0EC8E655
/// @DnDApplyTo : b8551c39-0e48-431a-9c5e-59b7b09f3485
/// @DnDArgument : "lives" "3"
with(obj_life_controller) {

__dnd_lives = real(3);
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 4AFEA97E
/// @DnDApplyTo : b8551c39-0e48-431a-9c5e-59b7b09f3485
with(obj_life_controller) {

__dnd_score = real(0);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 46DA1570
/// @DnDArgument : "steps" "1000"
alarm_set(0, 1000);