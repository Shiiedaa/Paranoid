/// @description Equip the eyes
// You can write your code in this editor

audio_play_sound(sound_eyes_pickup,50,false);
instance_create_layer(obj_player.x,obj_player.y,"LaserEyes",obj_laser_eyes);
instance_destroy();


