/// @description Update high score

if (ready == 1) {

    //Keep updating score until it matches with the highscore
    if (obj_persistent.highscore < score)    
        obj_persistent.highscore += 50;
    else {
    
        ready = 2;
        audio_stop_sound(snd_count);
        audio_play_sound(snd_countend, 0, false);
    }
}

