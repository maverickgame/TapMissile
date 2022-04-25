/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 37FBDA41
/// @DnDArgument : "code" "draw_set (c_black, 0.3);$(13_10)$(13_10)//draw_rectangle (10, display_get_gui_height() -100 , display_get_gui_width()-10 , position_bar_y, false);$(13_10)$(13_10)draw_rectangle (50, room_height*0.8, room_width-50, position_bar_y, false);$(13_10)draw_reset ();$(13_10)$(13_10)if(can_display_text)$(13_10){$(13_10)	draw_set_align(fa_center, fa_middle);$(13_10)	$(13_10)	draw_sprite( dialog_get_picture(), 0, 64, room_height*0.8-60);$(13_10)	$(13_10)	var message = dialog_get_text();$(13_10)	draw_text((room_width-50)/2, (room_height*0.8)/2, message);$(13_10)} "
draw_set (c_black, 0.3);

//draw_rectangle (10, display_get_gui_height() -100 , display_get_gui_width()-10 , position_bar_y, false);

draw_rectangle (50, room_height*0.8, room_width-50, position_bar_y, false);
draw_reset ();

if(can_display_text)
{
	draw_set_align(fa_center, fa_middle);
	
	draw_sprite( dialog_get_picture(), 0, 64, room_height*0.8-60);
	
	var message = dialog_get_text();
	draw_text((room_width-50)/2, (room_height*0.8)/2, message);
}