/// @description Insert description here
// You can write your code in this editor

draw_self();

if (!instance_exists(textInstance))  // Check if obj_text instance does not exist
{
    if (nearby)
    {
        var yOffset = sin(get_timer() / 500000) * 5;
        draw_sprite_ext(spr_EtoInteract, 0, x, ystart - 150 + yOffset, 1, 1, 0, c_white, 1);
    }
}
