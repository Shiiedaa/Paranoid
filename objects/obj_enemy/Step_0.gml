/// @description Insert description here
// You can write your code in this editor



vertical_speed = vertical_speed + grv;


// Ledge checks for enemies
if(grounded) && (afraid_of_heights) && ( !place_meeting(x + horizontal_speed, y+1, obj_wall))
{
	horizontal_speed = -horizontal_speed;
}

// Horizontal collision
if (place_meeting(x+horizontal_speed,y,obj_wall))
{
	while(!place_meeting(x+sign(horizontal_speed),y,obj_wall))
	{
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = -horizontal_speed;

}
x = x + horizontal_speed;

// Vertical collision
if (place_meeting(x,y+vertical_speed,obj_wall))
{
	while(!place_meeting(x,y + sign(vertical_speed),obj_wall))
	{
	y = y + sign(vertical_speed);
}
vertical_speed = 0;
}
y = y + vertical_speed;


// Animation
if (!place_meeting(x,y+1,obj_wall))
{
	grounded = false;
	sprite_index = spr_enemy_jump;
	image_speed = 0;
	if (sign(vertical_speed) > 0) image_index = 1; else image_index = 0;
}
else 
{
	grounded = true;
	image_speed = 1;
	if ( horizontal_speed == 0)
	{
		sprite_index = spr_enemy;
	}
	else 
	{
		sprite_index = spr_enemy_run;
	}
}

if( horizontal_speed != 0) image_xscale = sign(horizontal_speed) * size;
image_yscale = size;
