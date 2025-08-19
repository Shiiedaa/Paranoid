/// @description Insert description here
// You can write your code in this editor

var barHeight = 128; // Adjust this value based on your desired bar height

draw_set_color(c_black);

// Top black bar
draw_rectangle(0, 0, display_get_gui_width(), barHeight, false);

// Bottom black bar
draw_rectangle(0, display_get_gui_height() - barHeight, display_get_gui_width(), display_get_gui_height(), false);

// Draw your text
DrawSetText(c_black, font_Gotham, fa_center, fa_top);
draw_text(display_get_gui_width() / 2 + 2, display_get_gui_height() / 2 + 2, text);

draw_set_color(c_white);
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, text);
