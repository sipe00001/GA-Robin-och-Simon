/// @description träff på fiende

if (!place_meeting(x,y,obj_wall1))
{
	with (other)
	{
		hp--;
		flash = 3;
		hitfrom = other.direction;	
	}
	instance_destroy();
}

