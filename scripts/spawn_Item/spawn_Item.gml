
var _x = argument[0];
var _y = argument [1];
var _Item = argument [2];

//spawnandet av item
var inst = instance_create_layer(_x,_y,  "Instances", obj_Item);
inst.itemType = _Item;


//spriten
inst.sprite_index = obj_manager.itemSprite[_Item];