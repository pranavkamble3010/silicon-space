/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5772E218
/// @DnDArgument : "obj" "obj_main_player"
/// @DnDSaveInfo : "obj" "c219327a-5b0f-46ab-a29d-dde65e67298c"
var l5772E218_0 = false;
l5772E218_0 = instance_exists(obj_main_player);
if(l5772E218_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 5D919C59
	/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
	/// @DnDParent : 5772E218
	/// @DnDArgument : "var" "lives_left"
	/// @DnDArgument : "var_temp" "1"
	with(obj_main_player) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var lives_left = __dnd_lives;
	}

	/// @DnDAction : YoYo Games.Instance Variables.Get_Score
	/// @DnDVersion : 1
	/// @DnDHash : 779EA7A1
	/// @DnDApplyTo : b8551c39-0e48-431a-9c5e-59b7b09f3485
	/// @DnDParent : 5772E218
	/// @DnDArgument : "var" "curr_score"
	/// @DnDArgument : "var_temp" "1"
	with(obj_life_controller_1) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	var curr_score = __dnd_score;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4D6A180E
	/// @DnDParent : 5772E218
	/// @DnDArgument : "code" "draw_text(20,50,"Lives = "+string(lives_left));$(13_10)draw_text(20,70,"Current score = "+string(curr_score));"
	draw_text(20,50,"Lives = "+string(lives_left));
	draw_text(20,70,"Current score = "+string(curr_score));

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 72EC0BDB
	/// @DnDParent : 5772E218
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 44E26A13
		/// @DnDParent : 72EC0BDB
		room_restart();
	}
}