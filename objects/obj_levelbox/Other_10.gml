/// @description Deny or give access to the level

//If the level is locked
if (obj_persistent.unlock[level_id] == 0)
    audio_play_sound(snd_wrong, 0, false);
    
//Otherwise, if the level is unlocked
else {

    //Play 'Correct' sound
    audio_play_sound(snd_correct, 0, false);
    
    //Play 'Warp' sound
    audio_play_sound(snd_warp, 0, false);

    //Set up the destination room
    global.world = level_numb;
    
    //Prepare the player
    with (obj_player_ls) {
    
        ready = 1;
        image_speed = 0;
        image_index = 3;
    }
    
    //Do not allow cursor movement
    with (obj_levelbox_select) ready = 1;
}

