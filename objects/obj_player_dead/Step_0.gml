/// @description Insert description here
// You can write your code in this editor
if(done == 0)
{
	vertical_speed = vertical_speed + grv;


	// Horizontal collision
	if (place_meeting(x+horizontal_speed,y,obj_wall))
	{
		while(!place_meeting(x+sign(horizontal_speed),y,obj_wall))
		{
			x = x + sign(horizontal_speed);
		}
		horizontal_speed = 0;

	}
	x = x + horizontal_speed;

	// Vertical collision
	if (place_meeting(x,y+vertical_speed,obj_wall))
	{
		if(vertical_speed > 0 ) 
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		while(!place_meeting(x,y + sign(vertical_speed),obj_wall))
		{
		y = y + sign(vertical_speed);
	}
	vertical_speed = 0;
	}
	y = y + vertical_speed;	
}

