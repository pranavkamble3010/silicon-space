/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 12F1E7F6
/// @DnDApplyTo : 7753a0f2-0451-411c-990a-2fef0e19c952
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 64D95AC0
instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 0CDB5B11
/// @DnDApplyTo : 7753a0f2-0451-411c-990a-2fef0e19c952
/// @DnDArgument : "op" "3"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l0CDB5B11_0 = __dnd_health <= 0;
}
if(l0CDB5B11_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D41B769
	/// @DnDApplyTo : 7753a0f2-0451-411c-990a-2fef0e19c952
	/// @DnDParent : 0CDB5B11
	with(obj_character) instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2A29D0BA
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 0CDB5B11
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 61573884
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 0CDB5B11
	/// @DnDArgument : "op" "2"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l61573884_0 = __dnd_lives > 0;
	}
	if(l61573884_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 37B65319
		/// @DnDParent : 61573884
		/// @DnDArgument : "xpos" "545"
		/// @DnDArgument : "ypos" "650"
		/// @DnDArgument : "objectid" "obj_character"
		/// @DnDSaveInfo : "objectid" "7753a0f2-0451-411c-990a-2fef0e19c952"
		instance_create_layer(545, 650, "Instances", obj_character);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 23EAB303
	/// @DnDParent : 0CDB5B11
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 6EAE25DE
		/// @DnDParent : 23EAB303
		/// @DnDArgument : "room" "rm_highscore"
		/// @DnDSaveInfo : "room" "f904d26b-a547-488f-8dc9-ac2acb4748f1"
		room_goto(rm_highscore);
	}
}