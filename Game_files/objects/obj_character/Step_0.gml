/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F36B58C
/// @DnDArgument : "code" "obj_cross_hair.x = mouse_x;$(13_10)obj_cross_hair.y = mouse_y;"
obj_cross_hair.x = mouse_x;
obj_cross_hair.y = mouse_y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 32E6693A
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1CA21440
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 1D9B6B00
var l1D9B6B00_0;
l1D9B6B00_0 = mouse_check_button(mb_left);
if (l1D9B6B00_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23425DD5
	/// @DnDParent : 1D9B6B00
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F96DBE9
		/// @DnDParent : 23425DD5
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_laser"
		/// @DnDSaveInfo : "objectid" "0aae8ab6-a663-4cd5-aa8d-fb6cfa90ae4c"
		instance_create_layer(x, y, "Instances", obj_laser);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 60E76CA2
		/// @DnDParent : 23425DD5
		/// @DnDArgument : "soundid" "snd_laser"
		/// @DnDSaveInfo : "soundid" "4ac7ead8-db31-4cb2-a7ae-b67b6dd98619"
		audio_play_sound(snd_laser, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 306F8491
		/// @DnDParent : 23425DD5
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 74F1D261
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;