/// @description Draw the player

draw_sprite_ext(sprite_index, -1, round(x), y+1, 1, 1, 0, c_white, 1);

//Hard Mode
if (ready == 0)
&& (global.hardmode == 1)
    draw_sprite_ext(spr_hud_ls2_hm, 0, round(x), bbox_top-32, 1, 1, 0, c_white, 1);

