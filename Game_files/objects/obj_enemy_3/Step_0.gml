/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0606CABB
/// @DnDArgument : "obj" "obj_character"
/// @DnDSaveInfo : "obj" "7753a0f2-0451-411c-990a-2fef0e19c952"
var l0606CABB_0 = false;
l0606CABB_0 = instance_exists(obj_character);
if(l0606CABB_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 07638F55
	/// @DnDParent : 0606CABB
	/// @DnDArgument : "x" "obj_character.x"
	/// @DnDArgument : "y" "obj_character.y"
	direction = point_direction(x, y, obj_character.x, obj_character.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 020F194B
	/// @DnDParent : 0606CABB
	/// @DnDArgument : "speed" "spd3"
	speed = spd3;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7772E534
/// @DnDArgument : "angle" "direction"
image_angle = direction;