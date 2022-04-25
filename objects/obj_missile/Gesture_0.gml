/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E7FFFE5
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 076F7A32
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

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6EB46902
/// @DnDApplyTo : {obj_room}
with(obj_room) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1EFBDEC1
	/// @DnDParent : 6EB46902
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}