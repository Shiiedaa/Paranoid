// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KillPlayer(){
with(obj_laser_eyes) instance_destroy();
instance_change(obj_player_dead,true);

direction = point_direction(other.x,other.y,x,y);
horizontal_speed = lengthdir_x(6,direction);
vertical_speed = lengthdir_y(4,direction)-2;
if ( sign(horizontal_speed) != 0) image_xscale = sign(horizontal_speed);
}