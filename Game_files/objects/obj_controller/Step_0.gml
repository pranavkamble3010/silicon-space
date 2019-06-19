/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C0CDC7E
/// @DnDArgument : "code" "$(13_10)//CHeck if '' is pressed to pause/resume the game$(13_10)if(keyboard_check_pressed(0x50))$(13_10){$(13_10)	if(!pause)$(13_10)	{$(13_10)		pause = true;$(13_10)		instance_deactivate_all(true);$(13_10)	}$(13_10)	$(13_10)	else$(13_10)	{$(13_10)		pause = false;$(13_10)		instance_activate_all();$(13_10)	}$(13_10)}"

//CHeck if '' is pressed to pause/resume the game
if(keyboard_check_pressed(0x50))
{
	if(!pause)
	{
		pause = true;
		instance_deactivate_all(true);
	}
	
	else
	{
		pause = false;
		instance_activate_all();
	}
}