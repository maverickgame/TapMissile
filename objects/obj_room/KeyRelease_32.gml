/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 277308EB
/// @DnDArgument : "expr" "room"
var l277308EB_0 = room;
switch(l277308EB_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 279C4CE8
	/// @DnDParent : 277308EB
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4960A955
		/// @DnDParent : 279C4CE8
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "rm_game"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 40215D64
	/// @DnDParent : 277308EB
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3148BB2E
		/// @DnDParent : 40215D64
		/// @DnDArgument : "room" "rm_howtoplay"
		/// @DnDSaveInfo : "room" "rm_howtoplay"
		room_goto(rm_howtoplay);
		break;
}