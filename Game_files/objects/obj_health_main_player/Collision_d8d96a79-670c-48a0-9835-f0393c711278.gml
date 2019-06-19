/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 2ECD17E0
/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
/// @DnDArgument : "lives" "1"
/// @DnDArgument : "lives_relative" "1"
with(obj_life_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5A2B1B9D
instance_destroy();