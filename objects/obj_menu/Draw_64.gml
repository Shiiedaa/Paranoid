/// @description Draw menu
// You can write your code in this editor

// Load a different font for the title with the desired size
var titleFontSize = 500;
var titleFont = font_Gotham; // Change this to the appropriate font asset

draw_set_font(titleFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Draw the name of the game
var gameTitle = "Paranoid";
draw_text(gui_width / 2, gui_height / 2, gameTitle);

// Reset font for subsequent drawing
draw_set_font(font_Gotham);

// Calculate the maximum width of menu items
var maxMenuWidth = 0;
for (var i = 0; i < menu_items; i++) {
    var txt = menu[i];
    var txtWidth = string_width(txt);
    maxMenuWidth = max(maxMenuWidth, txtWidth);
}

// Adjust menu positions to fit on the screen
var menu_x = gui_width - maxMenuWidth - 10; // Adjust the offset as needed
var menu_y = gui_height - 50; // Adjust the offset as needed

var menu_itemheight = 30; 

// Draw the menu items
for (var i = 0; i < menu_items; i++)
{
    var offset = 2;
    var txt = menu[i];
    
    
    if(menu_cursor ==i)
    {
        txt = string_insert("> ",txt,0);
        var col = c_white;
    }
    else
    {
        var col = c_gray;
    }
    var xx = menu_x;
    var yy = menu_y - (menu_itemheight * (i*1.5));
    draw_set_color(c_black);
    draw_text(xx-offset,yy,txt);
    draw_text(xx+offset,yy,txt);
    draw_text(xx-offset,yy,txt);
    draw_text(xx+offset,yy,txt);
    draw_set_color(col);
    draw_text(xx,yy,txt);
    
}
