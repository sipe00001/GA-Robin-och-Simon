for(var i=0; i<ds_list_size(global.inv); i++)
{
	var arr = global.inv[| i];
	
	if (arr[0] == argument[0])
	{
		return i;
	}
}
return -1;