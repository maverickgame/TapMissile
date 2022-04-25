/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 15EF44BB
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, 60 + alarm_get(0));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7CF0C18D
/// @DnDArgument : "var" "int_ufochance"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "100"
int_ufochance = floor(random_range(0, 100 + 1));

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2F5D0EF7
/// @DnDArgument : "obj" "obj_teleport"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_teleport"
var l2F5D0EF7_0 = false;
l2F5D0EF7_0 = instance_exists(obj_teleport);
if(!l2F5D0EF7_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 67FCAD69
	/// @DnDParent : 2F5D0EF7
	/// @DnDArgument : "obj" "obj_ufo"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_ufo"
	var l67FCAD69_0 = false;
	l67FCAD69_0 = instance_exists(obj_ufo);
	if(!l67FCAD69_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 060BFD8F
		/// @DnDParent : 67FCAD69
		/// @DnDArgument : "var" "int_ufochance"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "10"
		if(int_ufochance <= 10)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 6A85DC37
			/// @DnDParent : 060BFD8F
			/// @DnDArgument : "var" "percent"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "20"
			/// @DnDArgument : "max" "80"
			var percent = floor(random_range(20, 80 + 1));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 144DB7C0
			/// @DnDParent : 060BFD8F
			/// @DnDArgument : "var" "percent2"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "20"
			/// @DnDArgument : "max" "50"
			var percent2 = floor(random_range(20, 50 + 1));
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3FE359EB
			/// @DnDParent : 060BFD8F
			/// @DnDArgument : "xpos" "room_width*(0.01*percent)"
			/// @DnDArgument : "ypos" "room_height*(0.01*percent2)"
			/// @DnDArgument : "var" "obj_teleportnew"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_teleport"
			/// @DnDSaveInfo : "objectid" "obj_teleport"
			var obj_teleportnew = instance_create_layer(room_width*(0.01*percent), room_height*(0.01*percent2), "Instances", obj_teleport);
		}
	}
}