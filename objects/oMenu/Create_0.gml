/// @description GUI/Vars/Menu setup
gui_width = display_get_gui_width();
gui_heigth = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 100;
menu_y = gui_heigth - gui_margin;
menu_x_target = gui_width - gui_margin - 150;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_item_height = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[3] = "New Game";
menu[2] = "Continue";
menu[1] = "Credits";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 3;
