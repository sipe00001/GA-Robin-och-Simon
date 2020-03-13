global.inv = ds_list_create();

enum item 
{
	coin,
	heart,
	chicken
}

itemSprite[item.coin] = spr_money;
itemSprite[item.heart] = spr_health;
itemSprite[item.chicken] = spr_chicken;