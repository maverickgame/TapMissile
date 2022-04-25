function dialog_add(argument0, argument1) {
	var picture = argument0;
	var message = argument1;

	if(global.dialog_index == -1) {
		global.dialog_index = 0;
	} else {
		global.dialog_index += 1;
	}

	global.dialog_messages[global.dialog_index, DIALOG.PICTURE] = picture;
	global.dialog_messages[global.dialog_index, DIALOG.MESSAGE] = message;


}
