/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 78D2EEB7
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemy_animation_2"
/// @DnDSaveInfo : "objectid" "7ced61a0-2086-432a-91c6-bf47681fe84c"
instance_create_layer(random(room_width), random(room_height), "Instances", obj_enemy_animation_2);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 516EF08E
/// @DnDArgument : "steps" "spawnrate2"
/// @DnDArgument : "alarm" "1"
alarm_set(1, spawnrate2);