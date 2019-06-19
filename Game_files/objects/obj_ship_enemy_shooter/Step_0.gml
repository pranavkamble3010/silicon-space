/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A8F96F5
/// @DnDBreak : 1

/// @DnDArgument : "code" "$(13_10)//if(distance_to_object(obj_main_player) < 200 && reload == 0)$(13_10)//{$(13_10)//	move_towards_point(obj_main_player.x+100,obj_main_player.y+100,3);$(13_10)//	var bullet_instace = instance_create_depth(x,y+125,obj_main_player.depth,obj_bullet_spaceshooter)$(13_10)//	with(bullet_instace)$(13_10)//	{$(13_10)//		speed = 15;$(13_10)//		direction = other.player_direction;$(13_10)//		image_angle = other.player_direction-270;$(13_10)//		other.reload = 1;$(13_10)//		other.alarm[0] = 30;$(13_10)//	}$(13_10)	$(13_10)	$(13_10)//}$(13_10)$(13_10)$(13_10)	$(13_10)$(13_10)$(13_10)switch(state)$(13_10){$(13_10)$(13_10)	case enemy_state.attack : $(13_10)	not_on_path = true;$(13_10)	player_direction = point_direction(x,y,obj_main_player.x,obj_main_player.y+80);$(13_10)	image_angle = player_direction-270;$(13_10)	path_end();$(13_10)	move_towards_point(obj_main_player.x+150,obj_main_player.y-50,3);$(13_10)	if(reload==0)$(13_10)	{$(13_10)		var bullet_instace = instance_create_depth(x,y,obj_main_player.depth,obj_bullet_spaceshooter)$(13_10)		with(bullet_instace)$(13_10)		{$(13_10)			speed = 15;$(13_10)			direction = other.player_direction;$(13_10)			image_angle = other.player_direction-270;$(13_10)			other.reload = 1;$(13_10)			other.alarm[0] = 30;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	break;$(13_10)	$(13_10)	$(13_10)	case enemy_state.patrol :	$(13_10)		if(not_on_path)$(13_10)		{$(13_10)			path_start(path1,15,path_action_continue,true);$(13_10)			not_on_path = false;$(13_10)		}$(13_10)			$(13_10)	break;$(13_10)	$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"

//if(distance_to_object(obj_main_player) < 200 && reload == 0)
//{
//	move_towards_point(obj_main_player.x+100,obj_main_player.y+100,3);
//	var bullet_instace = instance_create_depth(x,y+125,obj_main_player.depth,obj_bullet_spaceshooter)
//	with(bullet_instace)
//	{
//		speed = 15;
//		direction = other.player_direction;
//		image_angle = other.player_direction-270;
//		other.reload = 1;
//		other.alarm[0] = 30;
//	}
	
	
//}


	


switch(state)
{

	case enemy_state.attack : 
	not_on_path = true;
	player_direction = point_direction(x,y,obj_main_player.x,obj_main_player.y+80);
	image_angle = player_direction-270;
	path_end();
	move_towards_point(obj_main_player.x+150,obj_main_player.y-50,3);
	if(reload==0)
	{
		var bullet_instace = instance_create_depth(x,y,obj_main_player.depth,obj_bullet_spaceshooter)
		with(bullet_instace)
		{
			speed = 15;
			direction = other.player_direction;
			image_angle = other.player_direction-270;
			other.reload = 1;
			other.alarm[0] = 30;
		}
	}
	
	break;
	
	
	case enemy_state.patrol :	
		if(not_on_path)
		{
			path_start(path1,15,path_action_continue,true);
			not_on_path = false;
		}
			
	break;
	

}