key_escape = keyboard_check_pressed(vk_escape);

if (keyboard_check(vk_up)) {
	input = move_north; //Sätter input till scriptet för riktningen man ska gå i
	if (alarm[0] == -1) //Om man inte flyttat innan detta, sätt alarm så att man flyttar direkt
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
	alarm[0] = -1;  //Om man inte trycker på något, sätt alarm till -1
}

x=clamp(x, 0, room_width-grid_unit_width); //Så att spelaren inte kan lämna skärmen
y=clamp(y, 0, room_height-grid_unit_width);

if(key_escape)
	game_end();