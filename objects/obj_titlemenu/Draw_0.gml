/// @description Draw the title menus

//Draw HUD
event_inherited();

//Set the font
draw_set_font(global.hud_font);

//Set the colour
draw_set_colour(c_white);

//Set the alpha
draw_set_alpha(1);

//Get the length of the menu
for (var i=1; i<=menu[page,0]; i++) {
    
    //Draw the text...
    draw_text(__view_get( e__VW.XView, 0 )+80, __view_get( e__VW.YView, 0 )+144+(12*(i-1)),string_hash_to_newline(menu[page,i]));
    
    //...and draw a arrow next to the selected option 
    if (i == current)
        draw_sprite_ext(spr_hud_title_cursor, -1, __view_get( e__VW.XView, 0 )+72, __view_get( e__VW.YView, 0 )+144+(12*(i-1)), 1, 1, 0, c_white, 1);
}

//Draw highscore
draw_text(__view_get( e__VW.XView, 0 )+80, __view_get( e__VW.YView, 0 )+192, string_hash_to_newline("TOP- " + string_add_zeros(obj_persistent.highscore, 6)));

//Draw Mario & Luigi
draw_sprite(scr_mario_walk(), 0, 40, 193);
draw_sprite_ext(scr_luigi_walk(), 0, 216, 193, -1, 1, 0, c_white, 1);

