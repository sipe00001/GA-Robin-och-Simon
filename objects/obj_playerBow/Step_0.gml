//bågen följer efter spelaren
x = obj_playerBattle.x;
y = obj_playerBattle.y;

//Bågen siktar dit musen är
image_angle = point_direction(x,y,mouse_x,mouse_y);

//tiden innan du kan skjuta igen minskar konstant
firingdelay = firingdelay - 1;

//när vänsterklick trycks ner så avfyrars pilen från bågen och tiden innan du kan skjuta startar om
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