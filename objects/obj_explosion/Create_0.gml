/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 12D3BAAE
draw_self();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 204ADA90
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, 60 + alarm_get(0));