/// @description Insert description here
// You can write your code in this editor

x = obj_player.x + 1;
y = obj_player.y - 28;

image_angle = point_direction(x,y, mouse_x, mouse_y);

firing_delay = firing_delay - 1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firing_delay < 0)
{
	recoil = 4;
	firing_delay = 10;
	ScreenShake(2,10);
	with(instance_create_layer(x,y,"ShootingLaser",obj_shooting_laser))
	{
		spd = 25;
		audio_play_sound(sound_shoot,5,false);
		audio_sound_pitch(sound_shoot,choose(0.8,0.9,1.0));
		direction = other.image_angle + random_range(-5,5);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

