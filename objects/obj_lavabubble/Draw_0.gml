/// @description Draw podoboo

if (vspeed < 0)
    draw_sprite(sprite_index, -1, round(x), round(y));
else
    draw_sprite_ext(sprite_index, -1, round(x), round(y)+16, 1, -1, 0, c_white, 1);

