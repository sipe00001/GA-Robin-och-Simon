

switch(menu_index) {
	
	case 0:
		room_goto(room1);
		break;
	case 1: 
		room_goto(shop_menu);
		break;
	case 3:
		game_end();
		break;
}