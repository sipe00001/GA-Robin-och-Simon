/// @description pilens fysik
//när pilen träffar en vägg så stannar den.
if (place_meeting(x,y,obj_wall1))
{
	speed = 0;
}
//vart pilen åker och hur gravitation påverkar.
else 
{
	vspeed = vspeed + 0.3;
	image_angle = direction;
}