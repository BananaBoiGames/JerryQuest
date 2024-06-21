/// @description Draw cursor and scrolling text

//Draw cursor
draw_sprite(spr_hud_ls2_selector, -1, round(x), round(y));

//Draw 'Level select'
draw_sprite(spr_hud_ls2_levelselect, -1, __view_get( e__VW.XView, view_current ) + 189, __view_get( e__VW.YView, view_current ) + 12);

//Set colour for rectangle
draw_set_colour(make_colour_rgb(32, 32, 32));
draw_rectangle(16, 201, 191, 216, false);

//Draw scrolling text
draw_set_colour(c_white);
draw_string_port(str, 20, 205, 168, 8, scroll);

