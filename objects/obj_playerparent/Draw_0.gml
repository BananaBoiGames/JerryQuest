/// @description Draw the player

//Set the shader
pal_swap_set(palette_index, isflashing, false);

//Draw sprite
draw_sprite_ext(sprite_index, -1, round(x), round(y)+1, xscale, 1, 0, c_white, image_alpha);

//Reset shader
pal_swap_reset();

