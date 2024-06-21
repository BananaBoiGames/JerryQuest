/// @description Manage menu actions

//Inherit event
event_inherited();

//If the player presses the 'Up' key
if (keyboard_check_pressed(vk_up)) {

    //Play 'Fireball' sound
    audio_play_sound(snd_fireball, 0, false);

    //Cycle between options
    if (current == 1)
        current = menu[page,0];
    else
        current--;
}

//Otherwise, if the player presses the 'Down' key
else if (keyboard_check_pressed(vk_down)) {

    //Play 'Fireball' sound
    audio_play_sound(snd_fireball, 0, false);

    //Cycle between options        
    if (current == menu[page,0])
        current = 1;
    else
        current++;
}

//Otherwise, if the player presses the 'Shift' buttom
else if (keyboard_check_pressed(vk_shift)) {

    //If the game has been cleared
    if (obj_persistent.gameclear == 1) {

        //Page 0: Main
        if (page == 0) {
        
            //Option 1: NEW GAME
            if (current == 1) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Go to page 1
                page = 1;
                
                //Reset option to 1
                current = 1;
            }
            
            //Otherwise, load current game
            else if (current == 2) {
            
                //If a save file exists
                if (file_exists("SMBESave.sav")) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Load game
                    load("SMBESave.sav");
                    
                    //Go to level start screen
                    room_goto(rm_levelstart);
                }
                
                //Otherwise, play 'Wrong' sound
                else
                    audio_play_sound(snd_wrong, 0, false);   
            }
            
            //Otherwise, go to level selection screen
            else if (current == 3) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);        
                
                //Go to level selection screen
                room_goto(rm_levelselect);
            }
        }
        
        //Page 1: Player Select
        else if (page == 1) {
        
            //Option 1: MARIO GAME
            if (current == 1) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Go to page 1
                global.player = 0;
                
                //Go to page 1
                page = 2;
                
                //Reset option to 1
                current = 1;
            }
            
            //Option 2: LUIGI GAME
            else if (current == 2) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Load game
                global.player = 1;
                
                //Go to page 1
                page = 2;
                
                //Reset option to 1
                current = 1;       
            }        
        }
        
        //Page 2: Choose Difficulty
        else if (page == 2) {
        
            //Option 1: EASY MODE
            if (current == 1) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Set the world
                global.world = mylevel;
                
                //Go to page 1
                global.hardmode = 0;
                            
                //Go to level start screen
                room_goto(rm_levelstart);    
            }
            
            //Option 2: HARD MODE
            else if (current == 2) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Set the world
                global.world = mylevel;
                
                //Load game
                global.hardmode = 1;
                
                //Go to level start screen
                room_goto(rm_levelstart);           
            }              
        }
    }
    
    //Otherwise
    else {
    
        //Page 0: Main
        if (page == 0) {
        
            //Option 1: NEW GAME
            if (current == 1) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Go to page 1
                page = 1;
                
                //Reset option to 1
                current = 1;
            }
            
            //Otherwise, load current game
            else if (current == 2) {
            
                //If a save file exists
                if (file_exists("SMBESave.sav")) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Load game
                    load("SMBESave.sav");
                    
                    //Go to level start screen
                    room_goto(rm_levelstart);
                }
                
                //Otherwise, play 'Wrong' sound
                else
                    audio_play_sound(snd_wrong, 0, false);   
            }
            
            //Otherwise, go to level selection screen
            else if (current == 3) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);        
                
                //Go to level selection screen
                room_goto(rm_levelselect);
            }
        }
        
        //Page 1: Player Select
        else if (page == 1) {
        
            //Option 1: MARIO GAME
            if (current == 1) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Go to page 1
                global.player = 0;
                
                //Set the world
                global.world = mylevel;
                            
                //Go to level start screen
                room_goto(rm_levelstart);   
            }
            
            //Option 2: LUIGI GAME
            else if (current == 2) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Load game
                global.player = 1;
                
                //Set the world
                global.world = mylevel;
                            
                //Go to level start screen
                room_goto(rm_levelstart);    
            }        
        }
    }
}

//Go back
else if (keyboard_check_pressed(vk_control)) {

    //Return to page
    if (page != 0) {
    
        page--;
        current = 1;
    }
}

