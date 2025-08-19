/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if ( instance_exists(obj_enemy))
{
x = owner.x;
y = owner.y + 10;
image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(obj_player))
{
	
	if(point_distance(obj_player.x,obj_player.y,x,y) < 600)
	{
		image_angle = point_direction(x,y, obj_player.x,obj_player.y);
		countdown--;
		if(countdown <= 0)
		{
			if(!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false))
			{
					countdown = countdownrate;
			with(instance_create_layer(x,y,"ShootingLaser",obj_enemy_lasers))
				{
					spd = 8;
					audio_play_sound(sound_shoot,5,false);
					audio_sound_pitch(sound_shoot,choose(0.8,0.9,1.0));
					direction = other.image_angle + random_range(-5,5);
					image_angle = direction;
					}
				}
			}
	
		}
			
	}
}







