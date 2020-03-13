//skapar listan för inventory (inv)
global.inv = ds_list_create();

//lägger till 3 saker i den
enum item 
{
	coin,
	heart,
	chicken
}

itemSprite[item.coin] = spr_money;
itemSprite[item.heart] = spr_health;
itemSprite[item.chicken] = spr_chicken;