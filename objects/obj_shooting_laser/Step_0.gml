/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

// Collision check
if ( place_meeting(x,y,obj_wall)) && (image_index != 0)

{
	while ( place_meeting (x,y,obj_wall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}

	spd = 0;
	instance_change(obj_hit_spark,true);
}
