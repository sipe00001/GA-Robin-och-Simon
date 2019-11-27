if (input != undefined)
	script_execute(input); //Exekverar inputscriptet

if(keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right)){
	alarm[0] = alarm_interval; //Sätter alarm till så länge det ska vara tills man går igen.
}
else{
	input=undefined; //Om man inte trycker på något ska inte något script köras
}