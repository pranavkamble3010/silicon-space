/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B8A72B8
/// @DnDArgument : "var" "hp"
hp = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B4A072D
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_lvl_2"
if(room == room_lvl_2)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 5567CB22
	/// @DnDApplyTo : 7753a0f2-0451-411c-990a-2fef0e19c952
	/// @DnDParent : 5B4A072D
	/// @DnDArgument : "var" "hp"
	with(obj_character) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	hp = __dnd_health;
	}

	/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7614F74E
	/// @DnDParent : 5B4A072D
	/// @DnDArgument : "var" "lives_left"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var lives_left = __dnd_lives;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3E3FD7E9
	/// @DnDParent : 5B4A072D
	/// @DnDArgument : "code" "draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+10, "Health = " + string(hp));$(13_10)draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+40, "Lives = " + string(lives_left));"
	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+10, "Health = " + string(hp));
	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+40, "Lives = " + string(lives_left));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70B46245
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_lvl_1"
if(room == room_lvl_1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 64DA1A34
	/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
	/// @DnDParent : 70B46245
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "var_temp" "1"
	with(obj_main_player) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var hp = __dnd_health;
	}

	/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 286FB49C
	/// @DnDParent : 70B46245
	/// @DnDArgument : "var" "lives_left"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var lives_left = __dnd_lives;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7509B876
	/// @DnDParent : 70B46245
	/// @DnDArgument : "code" "draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+10, "Health = " + string(hp));$(13_10)draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+40, "Lives = " + string(lives_left));"
	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+10, "Health = " + string(hp));
	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+40, "Lives = " + string(lives_left));
}