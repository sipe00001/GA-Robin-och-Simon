//key bindingarna
key_left = keyboard_check( ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check( ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed( vk_space) || keyboard_check_pressed( ord("W")) || keyboard_check_pressed( vk_up);
key_escape = keyboard_check_pressed(vk_escape);

//rörelse höger och vänster
var move = key_right - key_left;


hspd = move * walkspd;

vspd = vspd + grav;


//hopp
if (place_meeting(x,y+1,obj_wall1)) and (key_jump)
{
	vspd = -9;
}

//kollision med vägg
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

//esc för att sluta spelet
if(key_escape)
	game_end();

//animationer för vertikala och horisontella rörelser
if (!place_meeting(x,y+1,obj_wall1))
{
	sprite_index = spr_playerBattleJump;
	image_speed = 0;
	if (sign(vspd) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hspd == 0)
	{
		sprite_index = spr_playerBattle;
	}
	else
	{
		sprite_index = spr_playerBattleRun;
	}
}
if (hspd != 0) image_xscale = sign(hspd);
