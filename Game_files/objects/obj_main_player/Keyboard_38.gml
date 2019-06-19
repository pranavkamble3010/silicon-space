/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 3560C8E9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
var l3560C8E9_0 = place_empty(x + 0, y + 1);
if (!l3560C8E9_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 082E60B5
	/// @DnDParent : 3560C8E9
	/// @DnDArgument : "speed" "-25"
	/// @DnDArgument : "type" "2"
	vspeed = -25;
}