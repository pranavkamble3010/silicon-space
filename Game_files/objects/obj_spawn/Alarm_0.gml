/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 42BD090D
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemy_animation_1"
/// @DnDSaveInfo : "objectid" "ee8bcfe1-cf3c-45e8-bd71-04efd4f8051d"
instance_create_layer(random(room_width), random(room_height), "Instances", obj_enemy_animation_1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 56C55FD2
/// @DnDArgument : "steps" "spawnrate1"
alarm_set(0, spawnrate1);