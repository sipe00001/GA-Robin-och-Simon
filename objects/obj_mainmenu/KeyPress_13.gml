

switch(menu_index) { //Gör olika saker beroende på vilket val man gör i menyn
	
	case 0:
		room_goto(room1);
		break;
	case 1: 
		room_goto(shop_menu);
		break;
	case 2:
		room_goto(room0);
		break;
	case 3:
		game_end();
		break;
}