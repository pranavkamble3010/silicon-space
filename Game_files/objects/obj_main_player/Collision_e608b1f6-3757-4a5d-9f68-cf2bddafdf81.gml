/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 03462FF5
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 480B80D2
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 685611D0
	/// @DnDParent : 480B80D2
	instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 45877A3A
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 480B80D2
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2965B2BE
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 480B80D2
	/// @DnDArgument : "op" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l2965B2BE_0 = __dnd_lives < 0;
	}
	if(l2965B2BE_0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 65116C23
		/// @DnDParent : 2965B2BE
		/// @DnDArgument : "room" "rm_highscore"
		/// @DnDSaveInfo : "room" "6daffa08-5a65-4f38-ae89-5354d05e1f6d"
		room_goto(rm_highscore);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4A0400AA
	/// @DnDParent : 480B80D2
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3BD49E0E
		/// @DnDParent : 4A0400AA
		room_restart();
	}
}