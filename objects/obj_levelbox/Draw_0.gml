/// @description Draw box and level index

//Draw the box locked/unlocked
draw_sprite(sprite_index, obj_persistent.unlock[level_id], x, y);

//Align the text
draw_set_valign(fa_center);
draw_set_halign(fa_center);

//Set the font
draw_set_font(global.hud_font);

//If the level is unlocked
if (obj_persistent.unlock[level_id] == false) {

    draw_set_colour(c_gray);
    draw_text(round(x+sprite_width/2), round(y+sprite_height/2), string_hash_to_newline("???"));
}
else {

    draw_set_colour(c_white);
    draw_text(round(x+sprite_width/2), round(y+sprite_height/2), string_hash_to_newline(string(level_numb)));
}
    
//Align the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

