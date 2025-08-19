draw_self();

if (nearby) 
{
    var yOffset = sin(get_timer() / 500000) * 5;
    draw_sprite_ext(spr_EtoInteract, 0, x, ystart - 100 + yOffset, 1, 1, 0, c_white, 1);
}
