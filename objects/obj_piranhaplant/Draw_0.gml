/// @description Draw Piranha Plant

//Set up the palette
if (palette_index != noone) {

    pal_swap_set(palette_index, global.skin, false);
}

//Draw sprite
draw_sprite_ext(sprite_index, -1, round(x), round(y), xscale, image_yscale, 0, c_white, 1);

//Reset the palette
pal_swap_reset();

