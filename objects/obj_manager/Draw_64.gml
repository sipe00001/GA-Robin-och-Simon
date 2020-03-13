//rita inventoryt
for(var i=0; i<ds_list_size(global.inv); i++)
{
	var arr = global.inv [| i];
	
	var item = arr[0]
	var count = arr[1]
	
	draw_sprite(itemSprite[item], 0, 16, 64 + 32*i);
	draw_text(32, 32 + 32*i, count);
}
