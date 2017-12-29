/// @description GUI/Vars/Menu setup
gui_width = display_get_gui_width();
gui_heigth = display_get_gui_height();
gui_margin = 32;

menu_font = fMenu;
menu_item_height = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[4] = "Menu";
menu[3] = "LevelSelect";
menu[2] = "Credits";
menu[1] = "TestRoom";
menu[0] = "TestRoom1";

menu_items = array_length_1d(menu);
menu_cursor = menu_items - 1;

menu_x =  100;
menu_y =  100 + (menu_item_height * menu_items);
