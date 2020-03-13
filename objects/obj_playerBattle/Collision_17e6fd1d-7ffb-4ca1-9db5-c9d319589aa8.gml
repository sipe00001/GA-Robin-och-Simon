if (timer <=0)
{
	hp --;
	if (hp <= 0)
	{
		room_goto(room0)
	}
	timer = 20;
}