/// @description Draw bowser

if (cooldown > 0)
    draw_sprite_ext(spr_bowser_dead, -1*2, round(x), y, xscale, 1, 0, c_white, 1);
else
    draw_sprite_ext(sprite_index, -1, round(x), y, xscale, 1, 0, c_white, 1);

