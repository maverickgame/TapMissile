/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 769D035E
/// @DnDApplyTo : {obj_room}
with(obj_room) {
	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 1AB563E9
	/// @DnDParent : 769D035E
	/// @DnDArgument : "var" "int"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "object" "obj_missile"
	/// @DnDSaveInfo : "object" "obj_missile"
	var int = instance_number(obj_missile);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4698C7A1
	/// @DnDParent : 769D035E
	/// @DnDArgument : "score" "int*10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(int*10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E7FFFE5
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7FC64469
/// @DnDApplyTo : {obj_missile}
with(obj_missile) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 076F7A32
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "soundid" "sfx_missileexplode"
/// @DnDSaveInfo : "soundid" "sfx_missileexplode"
audio_play_sound(sfx_missileexplode, 0, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 11B07333
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "soundid" "sfx_missileexplode"
/// @DnDSaveInfo : "soundid" "sfx_missileexplode"
audio_play_sound(sfx_missileexplode, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7583095C
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newExplosion"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
var newExplosion = instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);