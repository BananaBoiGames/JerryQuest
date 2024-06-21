/// @description Level select player logic

//If the player is being changed
if (ready == 1) {

    //Go down
    vspeed = 1;
    
    //Wait
    if (y > ystart+48) {
    
        //If a level has been selected
        if (obj_levelbox_select.ready == 0) {
        
            //Stop
            vspeed = 0;
            y = ystart+48;
            
            //Hold on
            ready = 2;
            
            //Go up again
            alarm[0] = 32;
        }
        
        //Otherwise, go to the level start screen
        else
            room_goto(rm_levelstart);
    }
}

//Press 'Space' to switch between players
else if (ready == 0)
&& (keyboard_check_pressed(vk_space)) {

    ready = 1;
    audio_play_sound(snd_warp, 0, false);
}

