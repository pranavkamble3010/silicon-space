/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B214DED
/// @DnDBreak : 1

/// @DnDArgument : "code" "bullet_direction =  point_direction(x,y,mouse_x,mouse_y);$(13_10)$(13_10)if(flashAlpha > 0)$(13_10){$(13_10)	flashAlpha -= 0.05;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)//bullet_direction = point_direction(x + lengthdir_x(64, image_angle) - lengthdir_y(64, image_angle), y + lengthdir_y(LenX, image_angle) + lengthdir_x(LenY, image_angle), obj_crosshair.x, obj_crosshair.y);$(13_10)obj_cross_hair.x = mouse_x;$(13_10)obj_cross_hair.y = mouse_y+125;$(13_10)//obj_cross_hair.direction = point_direction(x,y,mouse_x,mouse_y);$(13_10)$(13_10)if(mouse_check_button_pressed(mb_left))$(13_10){$(13_10)	//Apply shaders to the player$(13_10)	flashAlpha = 1;$(13_10)	$(13_10)	var bullet_instace = instance_create_depth(x,y+125,obj_main_player.depth,obj_bullet_player)$(13_10)	with(bullet_instace)$(13_10)	{$(13_10)		speed = 15;$(13_10)		direction = other.bullet_direction;$(13_10)		image_angle = other.bullet_direction+90;$(13_10)	}$(13_10)	//var curr_sprite = object_get_sprite(obj_main_player);$(13_10)	//if(curr_sprite == spr_main_player_running_right || curr_sprite == spr_main_player_idle)$(13_10)	//{$(13_10)	//	object_set_sprite(self,spr_main_player_attack_right)$(13_10)	//}$(13_10)	//var animation_timeout = 15;$(13_10)	//	while(animation_timeout--!=0){$(13_10)			$(13_10)	//	}$(13_10)	//	object_set_sprite(self,curr_sprite);$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if(place_meeting(x,y,obj_enemy_ground) > 0)$(13_10){$(13_10)	health = health - 1;$(13_10)	if(health <= 0)$(13_10)	{$(13_10)		room_restart();$(13_10)	}$(13_10)}$(13_10)$(13_10)//if(keyboard_check_pressed("q"))$(13_10)//{$(13_10)//	obj_main_player.x = obj_level_exit.x - 50;$(13_10)//	obj_main_player.y = obj_level_exit.y - 100;$(13_10)//}$(13_10)"
bullet_direction =  point_direction(x,y,mouse_x,mouse_y);

if(flashAlpha > 0)
{
	flashAlpha -= 0.05;

}


//bullet_direction = point_direction(x + lengthdir_x(64, image_angle) - lengthdir_y(64, image_angle), y + lengthdir_y(LenX, image_angle) + lengthdir_x(LenY, image_angle), obj_crosshair.x, obj_crosshair.y);
obj_cross_hair.x = mouse_x;
obj_cross_hair.y = mouse_y+125;
//obj_cross_hair.direction = point_direction(x,y,mouse_x,mouse_y);

if(mouse_check_button_pressed(mb_left))
{
	//Apply shaders to the player
	flashAlpha = 1;
	
	var bullet_instace = instance_create_depth(x,y+125,obj_main_player.depth,obj_bullet_player)
	with(bullet_instace)
	{
		speed = 15;
		direction = other.bullet_direction;
		image_angle = other.bullet_direction+90;
	}
	//var curr_sprite = object_get_sprite(obj_main_player);
	//if(curr_sprite == spr_main_player_running_right || curr_sprite == spr_main_player_idle)
	//{
	//	object_set_sprite(self,spr_main_player_attack_right)
	//}
	//var animation_timeout = 15;
	//	while(animation_timeout--!=0){
			
	//	}
	//	object_set_sprite(self,curr_sprite);
	
	
}


if(place_meeting(x,y,obj_enemy_ground) > 0)
{
	health = health - 1;
	if(health <= 0)
	{
		room_restart();
	}
}

//if(keyboard_check_pressed("q"))
//{
//	obj_main_player.x = obj_level_exit.x - 50;
//	obj_main_player.y = obj_level_exit.y - 100;
//}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4C2794E7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDSaveInfo : "object" "fb9d202a-56a4-4d69-b51e-fc0aa2403472"
var l4C2794E7_0 = instance_place(x + 0, y + 1, obj_block);
if ((l4C2794E7_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 17D142E6
	/// @DnDParent : 4C2794E7
	/// @DnDArgument : "force" "0"
	gravity = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
	/// @DnDVersion : 1
	/// @DnDHash : 0E6D7FB4
	/// @DnDParent : 4C2794E7
	/// @DnDArgument : "direction" "270"
	gravity_direction = 270;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 121226FB
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
	/// @DnDVersion : 1
	/// @DnDHash : 0F501AC8
	/// @DnDParent : 121226FB
	/// @DnDArgument : "direction" "270"
	gravity_direction = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 7FC17BA6
	/// @DnDParent : 121226FB
	gravity = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7949B05A
/// @DnDArgument : "expr" "vspeed > 12"
if(vspeed > 12)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28E86CF2
	/// @DnDParent : 7949B05A
	/// @DnDArgument : "expr" "12"
	/// @DnDArgument : "var" "vspeed"
	vspeed = 12;
}