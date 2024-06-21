/// @description Handles keyboard presses.

//Inherit event
event_inherited();

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
    
    //Switch between the choices
    switch (choice) {
        
        //If you chose the first choice.
        case (0): {
        
            //Play 'Correct' sound
            audio_play_sound(snd_correct, 0, false);
            
            //Reset globals
            score = 0;
            lives = 5;
            global.time = 0;
            global.coins = 0;
            global.powerup = cs_small;
            
            //Go to level start screen
            room_goto(rm_levelstart);
        } break;
        
        //If you chose the second choice.
        case (1): {
        
            //Play 'Correct' sound
            audio_play_sound(snd_correct, 0, false);
            
            //Reset globals
            score = 0;
            lives = 5;
            global.time = 0;
            global.coins = 0;
            global.powerup = cs_small;
            
            //Save the game
            save("SMBESave.sav");
            
            //Go to level start screen
            room_goto(rm_levelstart);
            
        } break;
        
        //If you chose the last choice.
        case (2): {
        
            //Play 'Correct' sound
            audio_play_sound(snd_correct, 0, false);
                          
            //Reset globals
            score = 0;
            lives = 5;
            global.time = 0;
            global.coins = 0;
            global.powerup = cs_small;
            
            //Save the game
            save("SMBESave.sav");
            
            //Exit to title screen
            room_goto(rm_title);
            
            //Exit
            exit;
        } break;
    }
}

