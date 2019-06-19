/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 362FEF97
/// @DnDArgument : "code" "flashAlpha = 0;$(13_10)flashColour = c_white;$(13_10)$(13_10)///Start the timeline to invoke healthpack$(13_10)timeline_running = true;$(13_10)timeline_index = timeline_health;"
flashAlpha = 0;
flashColour = c_white;

///Start the timeline to invoke healthpack
timeline_running = true;
timeline_index = timeline_health;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 797765F0
/// @DnDArgument : "health" "5"

__dnd_health = real(5);