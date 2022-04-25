/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 47A0B9A5
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 58658F9F
/// @DnDArgument : "soundid" "sfx_bottomdamage"
/// @DnDSaveInfo : "soundid" "sfx_bottomdamage"
audio_play_sound(sfx_bottomdamage, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 398E1D96
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newExplosion"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
var newExplosion = instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7B25B304
/// @DnDApplyTo : {obj_room}
with(obj_room) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 49DD8AA8
	/// @DnDParent : 7B25B304
	/// @DnDArgument : "health" "-20"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-20);
}