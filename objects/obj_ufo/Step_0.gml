/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72820173
/// @DnDArgument : "var" "x+100"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width*1"
if(x+100 > room_width*1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 4FC2EB64
	/// @DnDParent : 72820173
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 739933BA
	/// @DnDParent : 72820173
	/// @DnDArgument : "speed" "1"
	speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7282CA7F
/// @DnDArgument : "var" "x-100"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "room_width*0"
if(x-100 <= room_width*0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3D7F81D9
	/// @DnDParent : 7282CA7F
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 640945E2
	/// @DnDParent : 7282CA7F
	/// @DnDArgument : "speed" "1"
	speed = 1;
}