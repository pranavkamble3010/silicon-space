/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7BC97AF9


/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 45F9AD67
/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
/// @DnDArgument : "op" "2"
with(obj_life_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l45F9AD67_0 = __dnd_lives > 0;
}
if(l45F9AD67_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 416CD982
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 45F9AD67
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 04E91628
	/// @DnDApplyTo : other
	/// @DnDParent : 45F9AD67
	with(other) {
	x = xstart;
	y = ystart;
	}

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0C89B371
	/// @DnDDisabled : 1
	/// @DnDParent : 45F9AD67
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 70094CBE
else
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 282B8DA1
	/// @DnDParent : 70094CBE
	/// @DnDArgument : "room" "rm_highscore"
	/// @DnDSaveInfo : "room" "6daffa08-5a65-4f38-ae89-5354d05e1f6d"
	room_goto(rm_highscore);
}