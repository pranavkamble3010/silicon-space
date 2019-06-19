/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53BEB7E0
/// @DnDArgument : "code" "$(13_10)obj_health = obj_health - damage_vulnerability;$(13_10)$(13_10)if(obj_health = 0)$(13_10){$(13_10)	instance_destroy();$(13_10)}"

obj_health = obj_health - damage_vulnerability;

if(obj_health = 0)
{
	instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 60CB5D56
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 023D0480
/// @DnDArgument : "var" "obj_health"
if(obj_health == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4B99E17F
	/// @DnDApplyTo : e4b38eed-66cf-49b7-989e-7a8d61b59223
	/// @DnDParent : 023D0480
	/// @DnDArgument : "var" "curr_score"
	/// @DnDArgument : "var_temp" "1"
	with(obj_score_controller) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	var curr_score = __dnd_score;
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7DD055C3
	/// @DnDApplyTo : e4b38eed-66cf-49b7-989e-7a8d61b59223
	/// @DnDParent : 023D0480
	/// @DnDArgument : "score" "curr_score+100"
	with(obj_score_controller) {
	
	__dnd_score = real(curr_score+100);
	}
}