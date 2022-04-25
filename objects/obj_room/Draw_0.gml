/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 077FDC67
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 5DA620D9
	/// @DnDParent : 077FDC67
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
	/// @DnDVersion : 1
	/// @DnDHash : 0A8E30C5
	/// @DnDParent : 077FDC67
	/// @DnDArgument : "x" "global.int_roomw/2"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "global.int_roomh*0"
	/// @DnDArgument : "y_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	draw_text(x + global.int_roomw/2, y + global.int_roomh*0, string("Score: ") + string(__dnd_score));

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 5CDA179E
	/// @DnDParent : 077FDC67
	/// @DnDArgument : "x1" "global.int_roomw*0"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "global.int_roomh-20"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "global.int_roomw"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "global.int_roomh"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "backcol" "$FF123960"
	/// @DnDArgument : "barcol" "$FF00FFFF"
	/// @DnDArgument : "mincol" "$FF0000FC"
	/// @DnDArgument : "maxcol" "$FF11FF05"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	draw_healthbar(x + global.int_roomw*0, y + global.int_roomh-20, x + global.int_roomw, y + global.int_roomh, __dnd_health, $FF123960, $FF0000FC & $FFFFFF, $FF11FF05 & $FFFFFF, 0, (($FF123960>>24) != 0), (($FF00FFFF>>24) != 0));

	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 502B7F09
	/// @DnDParent : 077FDC67
	/// @DnDArgument : "var" "int_hp"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var int_hp = __dnd_health;

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 220D4932
	/// @DnDParent : 077FDC67
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_bottom"
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 482CA0FC
	/// @DnDParent : 077FDC67
	/// @DnDArgument : "x" "global.int_roomw/2"
	/// @DnDArgument : "y" "global.int_roomh"
	/// @DnDArgument : "caption" ""HEALTH: ""
	/// @DnDArgument : "text" "int_hp"
	draw_text_transformed(global.int_roomw/2, global.int_roomh, string("HEALTH: ") + string(int_hp), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 4EA58F49
	/// @DnDParent : 077FDC67
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}