/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 4CC0AD6A
/// @DnDInput : 2
/// @DnDArgument : "target" "int_hp"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "target_1" "int_score"
/// @DnDArgument : "target_temp_1" "1"
/// @DnDArgument : "instvar" "27"
/// @DnDArgument : "instvar_1" "25"
var int_hp = variable_instance_exists(id, "__dnd_health") ? __dnd_health : 0;
var int_score = variable_instance_exists(id, "__dnd_score") ? __dnd_score : 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B4A4C0F
/// @DnDArgument : "var" "int_hp"
/// @DnDArgument : "op" "3"
if(int_hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1DE42A00
	/// @DnDParent : 2B4A4C0F
	/// @DnDArgument : "value" "int_score"
	/// @DnDArgument : "var" "int_finalscore"
	global.int_finalscore = int_score;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 06F00DDD
	/// @DnDParent : 2B4A4C0F
	/// @DnDArgument : "room" "rm_gameover"
	/// @DnDSaveInfo : "room" "rm_gameover"
	room_goto(rm_gameover);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 336490BF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 71DDB4F6
	/// @DnDParent : 336490BF
	/// @DnDArgument : "var" "missile_count"
	/// @DnDArgument : "object" "obj_missile"
	/// @DnDSaveInfo : "object" "obj_missile"
	missile_count = instance_number(obj_missile);

	/// @DnDAction : YoYo Games.Instance Variables.Get_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5369126D
	/// @DnDApplyTo : obj_room
	/// @DnDParent : 336490BF
	/// @DnDArgument : "var" "int_score"
	/// @DnDArgument : "var_temp" "1"
	with(obj_room) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	var int_score = __dnd_score;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44C4E382
	/// @DnDParent : 336490BF
	/// @DnDArgument : "var" "missile_count"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "(int_score/500)+3"
	if(missile_count <= (int_score/500)+3)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 5539BB8E
		/// @DnDParent : 44C4E382
		/// @DnDArgument : "var" "percent"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "99"
		var percent = floor(random_range(0, 99 + 1));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 73EC66FA
		/// @DnDParent : 44C4E382
		/// @DnDArgument : "xpos" "room_width*(0.01*percent)"
		/// @DnDArgument : "var" "new_missile"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_missile"
		/// @DnDSaveInfo : "objectid" "obj_missile"
		var new_missile = instance_create_layer(room_width*(0.01*percent), 0, "Instances", obj_missile);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BCB9DDA
		/// @DnDParent : 44C4E382
		/// @DnDArgument : "var" "int_score mod 500"
		if(int_score mod 500 == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 229315DB
			/// @DnDParent : 1BCB9DDA
			/// @DnDArgument : "soundid" "dancy_continue"
			/// @DnDSaveInfo : "soundid" "dancy_continue"
			audio_play_sound(dancy_continue, 0, 0);
		}
	}
}