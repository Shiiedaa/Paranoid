/// @description Insert description here
// You can write your code in this editor

if (has_eyes_laser)
{
    mygun = instance_create_layer(x, y, "LaserEyes", obj_enemy_laser_eyes);
    with (mygun)
    {
        owner = other.id;
    }
}
else
{
    mygun = noone;
}
