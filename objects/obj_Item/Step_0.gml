//om ett item möter en spelare så försvinner den och ökar i mängd.
if (place_meeting(x, y, obj_playerBattle))
{
	instance_destroy();
	
	//öka mängd
	var itemPos = item_pos(itemType);
	if (itemPos == -1)
	{
		ds_list_add(global.inv, [itemType, 1]);
	}
	else 
	{
		var arr = global.inv[| itemPos];
		arr[@ 1]++;
	}
}
