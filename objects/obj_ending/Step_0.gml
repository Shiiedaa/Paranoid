/// @description move player towards center
// You can write your code in this editor

layer_x("TileAssets", min(layer_get_x("TileAssets") + 1));

// progress text
letters += spd;
text = string_copy(endtext[current_line],1,floor(letters));

//next line 
if ( letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	if (current_line+1 == array_length(endtext))
		{
			SlideTransition(TRANS_MODE.RESTART);	
		}
		else 
		{
			current_line ++;
			letters = 0;
			length = string_length(endtext[current_line]);	
		}
}