/// @description If W is pressed

if (keyboard_check_pressed(ord("W"))) {
	if (page < array_length_1d(text) - 1) {
		page++;
	} else instance_destroy();
}



