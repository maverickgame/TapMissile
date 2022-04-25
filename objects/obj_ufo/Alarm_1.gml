/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5B64D6B9
/// @DnDArgument : "var" "int_chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "100"
var int_chance = floor(random_range(0, 100 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3104FD29
/// @DnDArgument : "var" "int_chance"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "50"
if(int_chance >= 50)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7713DEE9
	/// @DnDParent : 3104FD29
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "obj_healnew"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_heal"
	/// @DnDSaveInfo : "objectid" "obj_heal"
	var obj_healnew = instance_create_layer(x + 0, y + 40, "Instances", obj_heal);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 612C5A78
	/// @DnDParent : 3104FD29
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C3708C7
	/// @DnDParent : 3104FD29
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "obj_teleport2new"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_teleport2"
	/// @DnDSaveInfo : "objectid" "obj_teleport2"
	var obj_teleport2new = instance_create_layer(x + 0, y + 0, "Instances", obj_teleport2);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4988BCB8
/// @DnDArgument : "var" "int_chance"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "50"
if(int_chance < 50)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B622F0F
	/// @DnDParent : 4988BCB8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "40"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "obj_explodenew"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_explode"
	/// @DnDSaveInfo : "objectid" "obj_explode"
	var obj_explodenew = instance_create_layer(x + 0, y + 40, "Instances", obj_explode);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 46E26A56
	/// @DnDParent : 4988BCB8
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 699EECEF
	/// @DnDParent : 4988BCB8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "obj_teleport2new"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_teleport2"
	/// @DnDSaveInfo : "objectid" "obj_teleport2"
	var obj_teleport2new = instance_create_layer(x + 0, y + 0, "Instances", obj_teleport2);
}