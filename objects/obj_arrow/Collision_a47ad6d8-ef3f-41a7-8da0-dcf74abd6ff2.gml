/// @description träff på fiende
//när pilen träffar en fiende så förstörs den och fienden förlorar liv
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

