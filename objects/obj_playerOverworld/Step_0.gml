if (keyboard_check(vk_up)) {
	input = move_north;
	
	if (alarm[0] == -1)
		alarm[0] = alarm_interval;
}
if (keyboard_check(vk_right)) {
	input = move_east;
	if (alarm[0] == -1)
		alarm[0] = alarm_interval;
}
if (keyboard_check(vk_down)) {
	input = move_south;
	if (alarm[0] == -1)
		alarm[0] = alarm_interval;
}
if (keyboard_check(vk_left)) {
	input = move_west;
	if (alarm[0] == -1)
		alarm[0] = alarm_interval;
}