
key_left = keyboard_check( ord("A"));
key_right = keyboard_check( ord("D"));
key_jump = keyboard_check_pressed( ord("W"));
key_escape = keyboard_check_pressed(vk_escape);

var move = key_right - key_left;


hspd = move * walkspd;

vspd = vspd + grav;

if (place_meeting(x,y+1,obj_wall1)) and (key_jump)
{
	vspd = -7;
}


if (place_meeting(x+hspd,y,obj_wall1))
{
	while (!place_meeting(x+sign(hspd),y,obj_wall1))
	{
		x = x + sign (hspd);
	}
	hspd = 0;
}
x = x + hspd;

if (place_meeting(x,y+vspd,obj_wall1))
{
	while (!place_meeting(x,y+sign(vspd),obj_wall1))
	{
		y = y + sign (vspd);
	}
	vspd = 0;
}
y = y + vspd;

if(key_escape)
	game_end();

