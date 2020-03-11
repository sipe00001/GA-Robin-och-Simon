
vspd = vspd + grav;

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

//animationer
if (!place_meeting(x,y+1,obj_wall1))
{
	sprite_index = spr_enemyBattleJump;
	image_speed = 0;
	if (sign(vspd) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hspd == 0)
	{
		sprite_index = spr_enemyBattle;
	}
	else
	{
		sprite_index = spr_enemyBattleRun;
	}
}
if (hspd != 0) image_xscale = sign(hspd);
