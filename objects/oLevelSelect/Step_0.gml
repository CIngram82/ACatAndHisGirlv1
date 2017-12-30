/// @desc Control menu


//Keyboard Controls
if(menu_control){
	if(keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if (menu_cursor <0) menu_cursor = menu_items -1;
	}
	if(keyboard_check_pressed(vk_enter)){
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_committed != -1){
	switch (menu_committed){
		case 4: SlideTransition(TRANS_MODE.GOTO,Menu); break;
		case 3: SlideTransition(TRANS_MODE.GOTO,LevelSelect); break;
		case 2: SlideTransition(TRANS_MODE.GOTO,Credits); break;
		case 1:	SlideTransition(TRANS_MODE.GOTO,TestRoom1); break;
		case 0: SlideTransition(TRANS_MODE.GOTO,TestRoom2); break;
		
	}
}