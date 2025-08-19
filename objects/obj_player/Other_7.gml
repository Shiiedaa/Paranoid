/// @description Insert description here
// You can write your code in this editor
audio_sound_pitch(0.8,0.9);
if ( sprite_index == spr_player_run) audio_play_sound(sound_footsteps_grass4, 1, false)
{
	repeat(2)
		{
			with (instance_create_layer(x,bbox_bottom,"ShootingLaser",obj_dust))	
			{
				vertical_speed = 0;
				
			}
		}
}



