/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0D672608
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 22E8FE6D
/// @DnDArgument : "soundid" "sfx_bottomdamage"
/// @DnDSaveInfo : "soundid" "sfx_bottomdamage"
audio_play_sound(sfx_bottomdamage, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 01EEC17B
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newExplosion"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
var newExplosion = instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);