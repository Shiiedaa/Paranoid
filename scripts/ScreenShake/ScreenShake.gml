/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude sets the strength of the shake radius ( pixel wise)
/// @arg Frames sets the time of the shake in frames (60 frames = 1 sec)
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenShake(){
	
	with (obj_camera)
	{
		if( argument0 > shake_remain)
		{
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_length = argument1;
				
		}

	}
}