/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 10F0CD71
/// @DnDApplyTo : 7753a0f2-0451-411c-990a-2fef0e19c952
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 49AACA46
instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 5DC94071
/// @DnDApplyTo : 7753a0f2-0451-411c-990a-2fef0e19c952
/// @DnDArgument : "op" "3"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l5DC94071_0 = __dnd_health <= 0;
}
if(l5DC94071_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71A44E77
	/// @DnDApplyTo : 7753a0f2-0451-411c-990a-2fef0e19c952
	/// @DnDParent : 5DC94071
	with(obj_character) instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7429917C
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 5DC94071
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 4754AC72
	/// @DnDApplyTo : 6a60134f-d330-4582-8d8f-47c36177231b
	/// @DnDParent : 5DC94071
	/// @DnDArgument : "op" "2"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l4754AC72_0 = __dnd_lives > 0;
	}
	if(l4754AC72_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5B9FE402
		/// @DnDParent : 4754AC72
		/// @DnDArgument : "xpos" "545"
		/// @DnDArgument : "ypos" "650"
		/// @DnDArgument : "objectid" "obj_character"
		/// @DnDSaveInfo : "objectid" "7753a0f2-0451-411c-990a-2fef0e19c952"
		instance_create_layer(545, 650, "Instances", obj_character);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 57E431C6
	/// @DnDParent : 5DC94071
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3295B886
		/// @DnDParent : 57E431C6
		/// @DnDArgument : "room" "rm_highscore"
		/// @DnDSaveInfo : "room" "f904d26b-a547-488f-8dc9-ac2acb4748f1"
		room_goto(rm_highscore);
	}
}