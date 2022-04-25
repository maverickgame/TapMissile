/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 5B6B04F9
/// @DnDArgument : "var" "missile_count"
/// @DnDArgument : "object" "obj_missile"
/// @DnDSaveInfo : "object" "obj_missile"
missile_count = instance_number(obj_missile);

/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 1B1A485B
/// @DnDApplyTo : {obj_room}
/// @DnDArgument : "var" "int_score"
/// @DnDArgument : "var_temp" "1"
with(obj_room) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var int_score = __dnd_score;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B7FFAD2
/// @DnDArgument : "var" "missile_count"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "(int_score/500)+3"
if(missile_count <= (int_score/500)+3)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2D039FEE
	/// @DnDParent : 6B7FFAD2
	/// @DnDArgument : "var" "percent"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "99"
	var percent = floor(random_range(0, 99 + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A111BB9
	/// @DnDParent : 6B7FFAD2
	/// @DnDArgument : "xpos" "room_width*(0.01*percent)"
	/// @DnDArgument : "var" "new_missile"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_missile"
	/// @DnDSaveInfo : "objectid" "obj_missile"
	var new_missile = instance_create_layer(room_width*(0.01*percent), 0, "Instances", obj_missile);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 189B9FDE
	/// @DnDParent : 6B7FFAD2
	/// @DnDArgument : "var" "int_score mod 500"
	if(int_score mod 500 == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 38B68687
		/// @DnDParent : 189B9FDE
		/// @DnDArgument : "soundid" "dancy_continue"
		/// @DnDSaveInfo : "soundid" "dancy_continue"
		audio_play_sound(dancy_continue, 0, 0);
	}
}