/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5486CF3B
/// @DnDDisabled : 1
/// @DnDArgument : "code" "$(13_10)if(place_meeting(x,y+1,obj_block))$(13_10){$(13_10)	gravity = 0;$(13_10)	gravity_direction = 270;$(13_10)	//vspeed = 0;$(13_10)	$(13_10)	//if(place_meeting(x+3,y+3,obj_death))$(13_10)	//{$(13_10)	//	vspeed = 6;$(13_10)	//}$(13_10)	$(13_10)	if(distance_to_object(obj_main_player)<45)$(13_10)	{$(13_10)		if(x < obj_main_player)$(13_10)		{$(13_10)			hspeed = 4;$(13_10)		}$(13_10)		$(13_10)		else$(13_10)		{$(13_10)			hspeed = -4;$(13_10)		}$(13_10)		$(13_10)	}$(13_10)	$(13_10)	else$(13_10)	{$(13_10)		hspeed = -4;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	gravity = 1;$(13_10)	gravity_direction = 270;$(13_10)}"