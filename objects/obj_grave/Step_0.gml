/// @description Interact with sign post
// You can write your code in this editor


if ( point_in_circle(obj_player.x,obj_player.y,x,y,100)) && (!instance_exists(obj_text))
{
	nearby = true;
	if(keyboard_check_pressed(ord("E")))
	{
		
		
		with (instance_create_layer(x + 5,y-10,layer,obj_text))	
		{
			text = other.text;
			length = string_length(text);
			}
		with (obj_camera)
			{
			follow = other.id;	
			}
	}
} else nearby = false;




