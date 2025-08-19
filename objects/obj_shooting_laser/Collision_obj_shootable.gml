/// @description Insert description here
// You can write your code in this editor

with  (other)
{
	hp--;
	flash = 3;
	hitfrom = other.direction;
	audio_play_sound(sound_hitpoint_eyes, 10, false);
}

instance_destroy();
