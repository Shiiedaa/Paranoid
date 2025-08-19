/// @description Insert description here
// You can write your code in this editor

// get player input
if (hascontrol)
{
    key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
    key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
    key_jump = keyboard_check_pressed(vk_space);  // Use keyboard_check_pressed for one-time jump
}
else
{
    key_right = 0;
    key_left = 0;
    key_jump = 0;
}

// calculate movement
var _move = key_right - key_left;

horizontal_speed = _move * walk_speed;

vertical_speed = vertical_speed + grv;

var has_played_jump_sound = false;  // New variable to track jump sound

can_jump -= 1;
if (can_jump > 0) && (key_jump)
{
    vertical_speed = -7;

    if (!has_played_jump_sound)
    {
        audio_sound_pitch(sound_jump, choose(0.8, 1.0, 1.2));
        audio_play_sound(sound_jump, 4, false);
        has_played_jump_sound = true;
    }
}

// Horizontal collision
if (place_meeting(x + horizontal_speed, y, obj_wall))
{
    while (!place_meeting(x + sign(horizontal_speed), y, obj_wall))
    {
        x = x + sign(horizontal_speed);
    }
    horizontal_speed = 0;
}
x = x + horizontal_speed;

// Vertical collision
if (place_meeting(x, y + vertical_speed, obj_wall))
{
    while (!place_meeting(x, y + sign(vertical_speed), obj_wall))
    {
        y = y + sign(vertical_speed);
    }
    vertical_speed = 0;
}
y = y + vertical_speed;




// Animation
if (!place_meeting(x, y + 1, obj_wall))
{
    sprite_index = spr_player_jump;
    image_speed = 0;

    if (sign(vertical_speed) > 0)
        image_index = 1;
    else
        image_index = 0;
}
else
{
    can_jump = 3;
	if (sprite_index == spr_player_jump)
    {
        audio_sound_pitch(sound_landing, choose(0.8, 1.0, 1.2));
        audio_play_sound(sound_landing, 4, false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"ShootingLaser",obj_dust))	
			{
				vertical_speed = 0;
				
			}
		}
    }
    image_speed = 1;
    if (horizontal_speed == 0)
    {
        sprite_index = spr_player;
    }
    else
    {
        sprite_index = spr_player_run;
    }
}

if (horizontal_speed != 0) image_xscale = sign(horizontal_speed);
