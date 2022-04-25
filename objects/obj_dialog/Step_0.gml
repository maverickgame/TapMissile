/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5141AFC8
/// @DnDArgument : "code" "position_bar_y = lerp (position_bar_y, position_bar_y_end, 0.1);$(13_10)$(13_10)$(13_10)if (abs(position_bar_y - position_bar_y_end) <= 5)$(13_10){$(13_10)	can_display_text = true$(13_10)}"
position_bar_y = lerp (position_bar_y, position_bar_y_end, 0.1);


if (abs(position_bar_y - position_bar_y_end) <= 5)
{
	can_display_text = true
}