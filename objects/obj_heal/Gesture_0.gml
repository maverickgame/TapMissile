/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E7FFFE5
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 076F7A32
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "soundid" "wow_bleep"
/// @DnDSaveInfo : "soundid" "wow_bleep"
audio_play_sound(wow_bleep, 0, 0);

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