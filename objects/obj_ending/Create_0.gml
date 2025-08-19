/// @description Insert description here
// You can write your code in this editor

laser_sprite = layer_sprite_get_id("TileAssets" , "graphic_laserEyes");

if( object_exists(obj_camera))
{
	endtext[0] = "and i must bloom"
	endtext[1] = "like a flower"
	endtext[2] = " in the dawn" 
	endtext[3] = " as i fall"
	endtext[4] = " deep in to "
	endtext[5] =  " the shadows"
	
}

spd = 0.5;
letters = 0;
current_line = 0;
length = string_length(endtext[current_line]);
text = "";

width = display_get_gui_width();
height = display_get_gui_height();
height_half = height * 0.5;