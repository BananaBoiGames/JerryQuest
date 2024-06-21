/// @description Handle all of the hot keys

//Quit the game when ALT+F4 are pressed.
if (keyboard_check_pressed(vk_f4))
    game_end();
    
//Restart the game when ALT+R are pressed.
else if (keyboard_check_pressed(ord("R"))) {

    //Stop all audio
    audio_stop_all();
        
    //Reset all global variables
    init_globals();    
    
    //If the screen is not fading out
    room_goto(room_first);
    
    //Show message
    message = "GAME RESTART"
    alarm[4] = 40;
}

//Enable / Disable VSync
else if (keyboard_check_pressed(ord("V"))) {

    //Toggle vsync
    vsync = !vsync;
    
    //Apply settings
    event_user(0);

    //Show message
    if (vsync) {
    
        message = "VSYNC ON";
        alarm[4] = 40;
    }
    else {
    
        message = "VSYNC OFF";
        alarm[4] = 40;
    }
}

//Change window size
else if (keyboard_check_pressed(ord("W"))) {

    //If the window is not set to fullscreen
    if (fullscreen == false) {

        //Change filter
        filter++;
        
        //Check if the filter is the second one
        if (filter == 3) {
        
            //Set default filter
            filter = 0;
            
            //Set fullscreen variable
            fullscreen = true;
            
            //Set fullscreen mode
            window_set_fullscreen(true);                                                           
        }
    }
    
    //Otherwise, set it to windowed mode
    else {
    
        //Change fullscreen variable
        fullscreen = false;
    
        //Set windowed mode
        window_set_fullscreen(false);
    }
    
    //Apply settings
    event_user(0);
    
    //Hide message
    alarm[4] = 60;
    
    //Display message
    if (fullscreen)
        message = "FULLSCREEN MODE";
    else
        message = "WINDOW SIZE " + string(filter+1) + "x";
}

