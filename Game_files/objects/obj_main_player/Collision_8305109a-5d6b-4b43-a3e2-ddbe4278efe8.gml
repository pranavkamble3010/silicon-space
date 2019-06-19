/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 09EB98EA
/// @DnDArgument : "health" "-2"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-2);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 5C62AE3C
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7793DFBB
	/// @DnDParent : 5C62AE3C
	instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 73F0048B
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 5C62AE3C
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 434C10C2
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 5C62AE3C
	/// @DnDArgument : "op" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l434C10C2_0 = __dnd_lives < 0;
	}
	if(l434C10C2_0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1C6198CA
		/// @DnDParent : 434C10C2
		/// @DnDArgument : "room" "rm_highscore"
		/// @DnDSaveInfo : "room" "6daffa08-5a65-4f38-ae89-5354d05e1f6d"
		room_goto(rm_highscore);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5AA902F4
	/// @DnDParent : 5C62AE3C
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3F76DECF
		/// @DnDParent : 5AA902F4
		room_restart();
	}
}