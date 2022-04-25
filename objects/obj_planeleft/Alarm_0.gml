/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2321AFCB
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "obj_ufonew"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_ufo"
/// @DnDSaveInfo : "objectid" "obj_ufo"
var obj_ufonew = instance_create_layer(x + 0, y + 0, "Instances", obj_ufo);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 55D4F27A
instance_destroy();