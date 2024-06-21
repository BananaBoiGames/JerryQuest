/// @description Handles keyboard presses.

//Check if the 'Up Key' is pressed.
if (keyboard_check_pressed(vk_up)) {

    //If the choice is already the first, exit
    if (choice == 0)
    exit;
    
    //Otherwise, move up a choice
    choice -= 1;
    
    //Play 'Fireball' sound
    audio_play_sound(snd_fireball, 0, false);
}

//Check if the 'Down Key' is pressed.
else if (keyboard_check_pressed(vk_down)) {

    //If the choice is already the last, exit
    if (choice == 2)
    exit;
    
    //Otherwise, move down a choice
    choice += 1;
    
    //Play 'Fireball' sound
    audio_play_sound(snd_fireball, 0, false);
}

//Check if the 'Shift Key' is pressed.
else if (keyboard_check_pressed(vk_shift)) {

    //Has the action been completed?
    if (ready == 1) {
    
        //Switch between the choices
        switch (choice) {
            
            //If you chose the first choice.
            case (0): {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                            
                //Play 'Pause' sound
                audio_play_sound(snd_pause, false, 0);
            
                //Continue the game
                if (ready == 1) {
                
                    ready2 = 2;
                    alarm[0] = 1;
                }
            } break;
            
            //If you chose the second choice.
            case (1): {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Play 'Pause' sound
                audio_play_sound(snd_pause, false, 0);
                            
                //Save the game
                save("SMBESave.sav");
                
                //Continue the game
                if (ready == 1) {
                
                    ready2 = 2;
                    alarm[0] = 1;
                }                
                
            } break;
            
            //If you chose the last choice.
            case (2): {

                //Save the game
                save("SMBESave.sav");
                
                //Initialize globals
                init_globals();
                
                //Stop all sounds
                audio_stop_all();
                
                //Exit to title screen
                room_goto(rm_title);
                
                //Exit
                exit;
            } break;
        }
    }
}

//Check if the 'Enter Key' is pressed without alt.
else if (keyboard_check_pressed(vk_enter)) && (!keyboard_check(vk_alt)) {

    //Play 'Pause' sound
    audio_play_sound(snd_pause, false, 0);

    //Makes the menu ready to be closed.
    if (ready == 1) {
    
        ready2 = 2;
    }
    
    //Shrinks...
    alarm[0] = 1;
}

