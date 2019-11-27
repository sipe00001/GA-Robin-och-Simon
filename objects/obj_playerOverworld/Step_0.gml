if (keyboard_check(vk_up)) {
	input = move_north;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
if (keyboard_check(vk_right)) {
	input = move_east;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
if (keyboard_check(vk_down)) {
	input = move_south;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
if (keyboard_check(vk_left)) {
	input = move_west;
	if (alarm[0] == -1)
		alarm[0] = 1;
}

if(!keyboard_check(vk_up) && !keyboard_check(vk_down) & !keyboard_check(vk_left) && !keyboard_check(vk_right)){
	alarm[0] = -1;
}