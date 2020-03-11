if (hp <= 0)
{
	instance_create_layer(x,y,layer,obj_enemyBattleDeath);
	
	instance_destroy();
}