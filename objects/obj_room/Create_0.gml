/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 03246907

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 4168806A
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 328E84E4
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "missile_count"
/// @DnDArgument : "var_1" "int_maxscore"
missile_count = 1;
int_maxscore = 0;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 68AC0B47
/// @DnDArgument : "soundid" "sfx_bckmusic"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "sfx_bckmusic"
var l68AC0B47_0 = sfx_bckmusic;
if (!audio_is_playing(l68AC0B47_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3C5E2BA5
	/// @DnDParent : 68AC0B47
	/// @DnDArgument : "soundid" "sfx_bckmusic"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "sfx_bckmusic"
	audio_play_sound(sfx_bckmusic, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 488F777A
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 199F6C9A
	/// @DnDParent : 488F777A
	/// @DnDArgument : "steps" "10"
	alarm_set(0, 10);
}