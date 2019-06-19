/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A9D2B0F
/// @DnDArgument : "code" "if(pause)$(13_10){$(13_10)	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+100, "Game Paused! Press enter to resume..");$(13_10)}"
if(pause)
{
	draw_text(camera_get_view_x(camera_get_active())+10, camera_get_view_y(camera_get_active())+100, "Game Paused! Press enter to resume..");
}