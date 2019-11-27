
key_left = keyboard_check( ord("A"))
key_right = keyboard_check( ord("D"))
key_jump = keyboard_check_pressed( ord("W"))

var move = key_right - key_left;


hspd = move * walkspd;

x = x + hspd;
