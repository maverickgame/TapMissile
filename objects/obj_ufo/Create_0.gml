/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 12C913E3
/// @DnDArgument : "var" "int_drop"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "120"
var int_drop = floor(random_range(60, 120 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6E1FD540
/// @DnDInput : 2
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "steps_1" "int_drop"
/// @DnDArgument : "alarm_1" "1"
alarm_set(0, 60);
alarm_set(1, int_drop);