if (done == 0)
{
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
		if (vspd > 0) 
		{
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x,y+sign(vspd),obj_wall1))
		{
			y = y + sign (vspd);
		}
		vspd = 0;
	}
	y = y + vspd;
}