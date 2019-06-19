/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 38119C7D
/// @DnDArgument : "obj" "obj_character"
/// @DnDSaveInfo : "obj" "7753a0f2-0451-411c-990a-2fef0e19c952"
var l38119C7D_0 = false;
l38119C7D_0 = instance_exists(obj_character);
if(l38119C7D_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 49683A85
	/// @DnDParent : 38119C7D
	/// @DnDArgument : "x" "obj_character.x"
	/// @DnDArgument : "y" "obj_character.y"
	direction = point_direction(x, y, obj_character.x, obj_character.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4C54E646
	/// @DnDParent : 38119C7D
	/// @DnDArgument : "speed" "spd2"
	speed = spd2;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3DAEAC0C
/// @DnDArgument : "angle" "direction"
image_angle = direction;