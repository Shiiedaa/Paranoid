/// @description Insert description here
// You can write your code in this editor

if( hp <= 0)
{
	with (instance_create_layer(x,y-25,layer,obj_enemy_dead))
	{
		direction = other.hitfrom;
		horizontal_speed = lengthdir_x(6, direction);
		vertical_speed = lengthdir_y(6, direction) -2;
	if (sign(horizontal_speed) != 0) image_xscale = sign(horizontal_speed) * other.size;
	image_yscale = other.size;
	
	
	}
	with (mygun) instance_destroy();
	instance_destroy();
}


