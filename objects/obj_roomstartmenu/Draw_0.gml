/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6D73AB46
/// @DnDInput : 2
/// @DnDArgument : "value" "display_get_gui_height()"
/// @DnDArgument : "value_1" "display_get_gui_width()"
/// @DnDArgument : "var" "int_roomh"
/// @DnDArgument : "var_1" "int_roomw"
global.int_roomh = display_get_gui_height();
global.int_roomw = display_get_gui_width();

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 11D52B91
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5DFAC4DB
/// @DnDArgument : "color" "$FF00FFF2"
draw_set_colour($FF00FFF2 & $ffffff);
var l5DFAC4DB_0=($FF00FFF2 >> 24);
draw_set_alpha(l5DFAC4DB_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5539A76C
/// @DnDArgument : "font" "Title"
/// @DnDSaveInfo : "font" "Title"
draw_set_font(Title);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3B1F9467
/// @DnDArgument : "x" "global.int_roomw/2"
/// @DnDArgument : "y" "global.int_roomh/2-50"
/// @DnDArgument : "caption" ""TAP MISSILE""
draw_text(global.int_roomw/2, global.int_roomh/2-50, string("TAP MISSILE") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1CFF2EE2
/// @DnDArgument : "color" "$FFCCFFFC"
draw_set_colour($FFCCFFFC & $ffffff);
var l1CFF2EE2_0=($FFCCFFFC >> 24);
draw_set_alpha(l1CFF2EE2_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0AFC4D52
/// @DnDArgument : "font" "General"
/// @DnDSaveInfo : "font" "General"
draw_set_font(General);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5E7262B3
/// @DnDArgument : "x" "global.int_roomw/2"
/// @DnDArgument : "y" "global.int_roomh/2"
/// @DnDArgument : "caption" ""TAP THE SCREEN TO START""
draw_text(global.int_roomw/2, global.int_roomh/2, string("TAP THE SCREEN TO START") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 36326D37
/// @DnDArgument : "x" "global.int_roomw/2"
/// @DnDArgument : "y" "global.int_roomh/2+50"
/// @DnDArgument : "caption" ""GET HIGHER SCORE""
draw_text(global.int_roomw/2, global.int_roomh/2+50, string("GET HIGHER SCORE") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5826AA8D
/// @DnDArgument : "x" "global.int_roomw/2"
/// @DnDArgument : "y" "global.int_roomh/2+100"
/// @DnDArgument : "caption" ""IF HEALTH ZERO, YOU LOSE""
draw_text(global.int_roomw/2, global.int_roomh/2+100, string("IF HEALTH ZERO, YOU LOSE") + "");