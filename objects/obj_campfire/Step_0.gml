/// @description Insert description here
// You can write your code in this editor

if (point_in_circle(obj_player.x, obj_player.y, x, y, 400)) {
    if (!audio_is_playing(sound_campfire)) {
        audio_play_sound(sound_campfire, 1, false);
    }
} else {
    audio_stop_sound(sound_campfire);
}




