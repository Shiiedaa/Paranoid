/// @description Insert description here
// You can write your code in this editor

horizontal_speed = 0;
vertical_speed = 0;
grv = 0.3;
done = 0;

image_index = 0;
image_speed = 0;

ScreenShake(6,60);
audio_play_sound(sound_player_death, 10,false);
game_set_speed(30,gamespeed_fps);
obj_camera.follow = id;