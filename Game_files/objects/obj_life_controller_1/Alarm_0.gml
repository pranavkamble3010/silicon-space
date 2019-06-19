/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0A26C6E7
/// @DnDArgument : "xpos" "random_range(15,room_width-15)"
/// @DnDArgument : "ypos" "random(room_height-30)"
/// @DnDArgument : "objectid" "obj_extra_life"
instance_create_layer(random_range(15,room_width-15), random(room_height-30), "Instances", obj_extra_life);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 101762A7
/// @DnDArgument : "xpos" "random_range(15,room_width-15)"
/// @DnDArgument : "ypos" "random(room_height-30)"
/// @DnDArgument : "objectid" "obj_bonus"
instance_create_layer(random_range(15,room_width-15), random(room_height-30), "Instances", obj_bonus);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 052BBFAB
/// @DnDArgument : "steps" "random(2000)"
alarm_set(0, random(2000));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 10C41A9D
/// @DnDArgument : "xpos" "random_range(15,room_width-15)"
/// @DnDArgument : "ypos" "random(room_height-30)"
/// @DnDArgument : "objectid" "obj_bonus"
instance_create_layer(random_range(15,room_width-15), random(room_height-30), "Instances", obj_bonus);