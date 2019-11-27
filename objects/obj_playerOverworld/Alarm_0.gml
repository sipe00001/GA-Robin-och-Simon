if (input != undefined)
	script_execute(input);

if(keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right)){
	alarm[0] = alarm_interval;
}
else{
	input=undefined;
}