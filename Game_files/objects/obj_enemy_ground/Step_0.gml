/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B4CD049
/// @DnDArgument : "code" "$(13_10)$(13_10)if(instance_place(x+0,y+1,obj_death) > 0)$(13_10){$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)if(instance_place(x+0,y+1,obj_main_player) > 0)$(13_10){$(13_10)	//obj_main_player.health -= 20;$(13_10)	//if(obj_main_player.health <= 0)$(13_10)	//{$(13_10)	//	instance_destroy(other);$(13_10)	//	room_restart();$(13_10)	//}$(13_10)		$(13_10)	instance_destroy();$(13_10)	$(13_10)}$(13_10)$(13_10)if(instance_place(x+0,y+1,obj_block) > 0)$(13_10){$(13_10)	gravity = 0;$(13_10)	gravity_direction = 270;$(13_10)	vspeed = 0;$(13_10)	$(13_10)	//if(place_meeting(x+3,y+3,obj_death))$(13_10)	//{$(13_10)	//	vspeed = 6;$(13_10)	//}$(13_10)	$(13_10)	if(instance_place(x+0,y+1,obj_block) > 0)$(13_10)	{$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if(distance_to_object(obj_main_player) < 200)$(13_10)	{$(13_10)		if(x < obj_main_player.x)$(13_10)		{$(13_10)			hspeed = 4;$(13_10)			sprite_index = spr_enemy_ground_right;$(13_10)		$(13_10)		}$(13_10)		$(13_10)		else$(13_10)		{$(13_10)			hspeed = -4;$(13_10)			sprite_index = spr_enemy_ground;$(13_10)		}$(13_10)		$(13_10)	}$(13_10)	$(13_10)	else$(13_10)	{$(13_10)		hspeed = -4;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	gravity = 1;$(13_10)	gravity_direction = 270;$(13_10)}$(13_10)$(13_10)if(vspeed > 12)$(13_10){$(13_10)	vspeed=12;$(13_10)}"


if(instance_place(x+0,y+1,obj_death) > 0)
{
	instance_destroy();
}

if(instance_place(x+0,y+1,obj_main_player) > 0)
{
	//obj_main_player.health -= 20;
	//if(obj_main_player.health <= 0)
	//{
	//	instance_destroy(other);
	//	room_restart();
	//}
		
	instance_destroy();
	
}

if(instance_place(x+0,y+1,obj_block) > 0)
{
	gravity = 0;
	gravity_direction = 270;
	vspeed = 0;
	
	//if(place_meeting(x+3,y+3,obj_death))
	//{
	//	vspeed = 6;
	//}
	
	if(instance_place(x+0,y+1,obj_block) > 0)
	{
		
	}
	
	if(distance_to_object(obj_main_player) < 200)
	{
		if(x < obj_main_player.x)
		{
			hspeed = 4;
			sprite_index = spr_enemy_ground_right;
		
		}
		
		else
		{
			hspeed = -4;
			sprite_index = spr_enemy_ground;
		}
		
	}
	
	else
	{
		hspeed = -4;
	}
	
}

else
{
	gravity = 1;
	gravity_direction = 270;
}

if(vspeed > 12)
{
	vspeed=12;
}