/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 020E04D4
/// @DnDArgument : "var" "hp3"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var hp3 = __dnd_health;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 6B8EA7F0
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0098A2B8
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 27CE3EED
/// @DnDApplyTo : e4b38eed-66cf-49b7-989e-7a8d61b59223
/// @DnDArgument : "score" "100"
/// @DnDArgument : "score_relative" "1"
with(obj_score_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(100);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F485428
/// @DnDArgument : "var" "hp3"
/// @DnDArgument : "op" "3"
if(hp3 <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C04D32A
	/// @DnDParent : 0F485428
	instance_destroy();
}