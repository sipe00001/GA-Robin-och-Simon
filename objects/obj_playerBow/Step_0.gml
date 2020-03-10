x = obj_playerBattle.x;
y = obj_playerBattle.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 25;
	with (instance_create_layer(x,y,"Arrow", obj_arrow))
	{
		speed = 15;
		direction = other.image_angle;
		image_angle = direction;
	}
	
}