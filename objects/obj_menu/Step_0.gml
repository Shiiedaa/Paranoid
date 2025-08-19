/// @description Control menu
// You can write your code in this editor

// Item introduction ( appearing on screen)
menu_x += (menu_x_target - menu_x)/menu_speed;

// Keyboard Controls
if (menu_control)
{
    if ( keyboard_check_pressed(vk_up))
    {
        menu_cursor ++;
        if(menu_cursor >= menu_items) menu_cursor = 0;
    }
    if ( keyboard_check_pressed(vk_down))
    {
        menu_cursor --;
        if(menu_cursor < 0 ) menu_cursor = menu_items - 1;
    }
    
    if ( keyboard_check_pressed(vk_enter))
    {
        menu_x_target = gui_width + 200;
        menu_committed = menu_cursor;
        ScreenShake(15,30);
        menu_control = false;
        audio_play_sound(sound_select, 10, false);
        audio_stop_sound(sound_track); // Stop the soundtrack when a menu item is selected
    }
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
    switch (menu_committed)
    {
        case 2: SlideTransition(TRANS_MODE.NEXT); break;
        case 1: 
        {
            if(!file_exists(SAVEFILE))
            {
                SlideTransition(TRANS_MODE.NEXT);    
            }
            else
            {
                var _file = file_text_open_read(SAVEFILE);    
                var _target = file_text_read_real(_file)
                file_text_close(_file);
                SlideTransition(TRANS_MODE.GOTO,_target);
            }
        }
        break;
        case 0: game_end(); break;
        
    }
    
    
}
