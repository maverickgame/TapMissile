/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 42753AD6
/// @DnDInput : 2
/// @DnDArgument : "output" "int_roomw"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "output_1" "int_roomh"
/// @DnDArgument : "output_temp_1" "1"
/// @DnDArgument : "var" "global.int_roomw"
/// @DnDArgument : "var_1" "global.int_roomh"
var int_roomw = global.int_roomw;
var int_roomh = global.int_roomh;

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 11D52B91
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 01AE93AB
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0AABC467
/// @DnDArgument : "color" "$FF00FFF2"
draw_set_colour($FF00FFF2 & $ffffff);
var l0AABC467_0=($FF00FFF2 >> 24);
draw_set_alpha(l0AABC467_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5D521D5A
/// @DnDArgument : "font" "Title"
/// @DnDSaveInfo : "font" "Title"
draw_set_font(Title);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5E7262B3
/// @DnDArgument : "x" "int_roomw/2"
/// @DnDArgument : "y" "int_roomh/2"
/// @DnDArgument : "caption" ""GAME OVER""
draw_text(int_roomw/2, int_roomh/2, string("GAME OVER") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 53365EAF
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3CB0ABB5
/// @DnDArgument : "color" "$FF02FF06"
draw_set_colour($FF02FF06 & $ffffff);
var l3CB0ABB5_0=($FF02FF06 >> 24);
draw_set_alpha(l3CB0ABB5_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3B703C2C
/// @DnDArgument : "font" "General"
/// @DnDSaveInfo : "font" "General"
draw_set_font(General);

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 669E4292
/// @DnDArgument : "output" "int_score"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "global.int_finalscore"
var int_score = global.int_finalscore;

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 426890D8
/// @DnDArgument : "x" "int_roomw/2"
/// @DnDArgument : "y" "int_roomh/2 -100"
/// @DnDArgument : "caption" ""YOUR SCORE: ""
/// @DnDArgument : "text" "int_score"
draw_text_transformed(int_roomw/2, int_roomh/2 -100, string("YOUR SCORE: ") + string(int_score), 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 50E67E4D
draw_set_colour($FFFFFFFF & $ffffff);
var l50E67E4D_0=($FFFFFFFF >> 24);
draw_set_alpha(l50E67E4D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 31AAFC88
/// @DnDArgument : "font" "General"
/// @DnDSaveInfo : "font" "General"
draw_set_font(General);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 35C2F290
/// @DnDArgument : "x" "int_roomw/2"
/// @DnDArgument : "y" "int_roomh/2 +100"
/// @DnDArgument : "caption" ""TAP AGAIN TO RESTART""
draw_text(int_roomw/2, int_roomh/2 +100, string("TAP AGAIN TO RESTART") + "");