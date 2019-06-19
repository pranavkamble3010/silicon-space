/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 7D17F8CB
/// @DnDArgument : "var" "hp2"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var hp2 = __dnd_health;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 59226E1E
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0932A90B
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 5B4D2FF0
/// @DnDApplyTo : e4b38eed-66cf-49b7-989e-7a8d61b59223
/// @DnDArgument : "score" "100"
/// @DnDArgument : "score_relative" "1"
with(obj_score_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(100);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65100386
/// @DnDArgument : "var" "hp2"
/// @DnDArgument : "op" "3"
if(hp2 <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 01A4F7F5
	/// @DnDParent : 65100386
	instance_destroy();
}