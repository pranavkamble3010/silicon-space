/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67F85C52
/// @DnDArgument : "code" "draw_self();$(13_10)$(13_10)if(flashAlpha > 0)$(13_10){$(13_10)	shader_set(shdr_player);$(13_10)	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,flashColour,flashAlpha);$(13_10)	shader_reset();$(13_10)}"
draw_self();

if(flashAlpha > 0)
{
	shader_set(shdr_player);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,flashColour,flashAlpha);
	shader_reset();
}