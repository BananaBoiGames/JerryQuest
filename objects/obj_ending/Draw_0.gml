/// @description Congratulate the player

//Draw player
draw_sprite_ext(spr_ending, global.player, __view_get( e__VW.XView, 0 )+80, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), 1, 1, 0, c_white, 1);

//Set the text colour
draw_set_color(c_white);

//Set the text alpha
draw_set_alpha(1);

//Display 'THANK YOU MARIO!'
if (global.hardmode == 0) { //If hard mode is not selected
      
    draw_text(16, 16, string_hash_to_newline("WAY TO GO!"));
    draw_text(16, 32, string_hash_to_newline("YOU SAVED THE #MUSHROOM KINGDOM!"));    
    draw_text(16, 64, string_hash_to_newline("NOW TRY TO BEAT THE GAME ON #HARD MODE."));
    draw_text(16, 104, string_hash_to_newline("THANK YOU FOR PLAYING!."));    
}

//Otherwise, if hard mode is selected.
else {

    draw_text(16, 16, string_hash_to_newline("WAY TO GO!"));
    draw_text(16, 32, string_hash_to_newline("YOU SAVED THE #MUSHROOM KINGDOM!"));    
    draw_text(16, 64, string_hash_to_newline("DID YOU GET A HIGHER SCORE #AFTER PLAYING HARD MODE?"));
    draw_text(16, 104, string_hash_to_newline("THANK YOU FOR PLAYING!."));    
}

//Draw score and high-score
draw_text(200, 136, string_hash_to_newline("SCORE"));
draw_text(184, 152, string_hash_to_newline(string_add_zeros(score, 7)));

draw_text(176, 168, string_hash_to_newline("HI-SCORE"));
draw_text(184, 184, string_hash_to_newline(string_add_zeros(obj_persistent.highscore, 7)));

