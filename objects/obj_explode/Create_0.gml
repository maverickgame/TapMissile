/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 2A84D2C0
/// @DnDApplyTo : {obj_room}
/// @DnDArgument : "var" "int_score"
/// @DnDArgument : "var_temp" "1"
with(obj_room) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var int_score = __dnd_score;
}

/// @DnDAction : YoYo Games.Types.Decimal_To_Integer
/// @DnDVersion : 1
/// @DnDHash : 25882155
/// @DnDArgument : "var" "int_grav"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "r" "2"
/// @DnDArgument : "n" "int_score/500"
var int_grav = floor(int_score/500);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6E93E95D
/// @DnDArgument : "var" "int_rdmgrav"
/// @DnDArgument : "min" "0.01"
/// @DnDArgument : "max" "0.001*int_grav"
int_rdmgrav = (random_range(0.01, 0.001*int_grav));

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 732E4AE0
/// @DnDArgument : "force" "int_rdmgrav"
gravity = int_rdmgrav;