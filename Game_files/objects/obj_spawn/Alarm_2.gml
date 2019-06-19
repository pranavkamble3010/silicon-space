/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0E204DDE
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemy_animation_3"
/// @DnDSaveInfo : "objectid" "239bff7b-6cbb-48bd-bdfe-61c6ebc3683d"
instance_create_layer(random(room_width), random(room_height), "Instances", obj_enemy_animation_3);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 50621A71
/// @DnDArgument : "steps" "spawnrate3"
/// @DnDArgument : "alarm" "2"
alarm_set(2, spawnrate3);