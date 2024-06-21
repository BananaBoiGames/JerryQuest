/// @description Return to title screen as soon highscore is updated.

//Force stop if not updated
if (obj_persistent.highscore < score) {

    //Force update highscore
    obj_persistent.highscore = score;
    
    //End update
    ready = 2;
    
    //Stop sounds
    audio_stop_sound(snd_count);
    audio_play_sound(snd_countend, 0, false);
}
else {

    //Reset global variables
    init_globals();
    
    //Return to title
    room_goto(rm_title);
    
    //Stop ending song
    if (audio_is_playing(bgm_ending))
        audio_stop_sound(bgm_ending);
}

