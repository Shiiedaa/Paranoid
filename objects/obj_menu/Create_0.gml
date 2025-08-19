/// @description  GUI/Vars/Menu Setup
// You can write your code in this editor
#macro SAVEFILE "Save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = font_Gotham;
menu_itemheight = font_get_size(font_Gotham);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue" ;
menu[0] = "Quit Game";

menu_items = array_length(menu);
menu_cursor = 2;

// Soundtrack
sound_track = sound_mainMenu_soundtrack;
audio_play_sound(sound_track, 1, true);