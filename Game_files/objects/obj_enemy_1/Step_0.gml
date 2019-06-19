/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3C40AD38
/// @DnDArgument : "obj" "obj_character"
/// @DnDSaveInfo : "obj" "7753a0f2-0451-411c-990a-2fef0e19c952"
var l3C40AD38_0 = false;
l3C40AD38_0 = instance_exists(obj_character);
if(l3C40AD38_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 33634BE9
	/// @DnDParent : 3C40AD38
	/// @DnDArgument : "x" "obj_character.x"
	/// @DnDArgument : "y" "obj_character.y"
	direction = point_direction(x, y, obj_character.x, obj_character.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 66C2D870
	/// @DnDParent : 3C40AD38
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1EF273DD
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4775753E
/// @DnDArgument : "var" "hp"
if(hp == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 36D82074
	/// @DnDParent : 4775753E
	instance_destroy();
}