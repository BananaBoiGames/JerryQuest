/// @description Load fullscreen, window size, vertical syncronization, highscore and unlocked levels. 

//If the 'settings.dat' file exist.
if (file_exists("settings.dat")) {

    //Open the file
    var file = file_text_open_read("settings.dat");

    //Set fullscreen mode based on the read value
    fullscreen = real(file_text_read_string(file));
    file_text_readln(file);

    //Set filtering mode based on the read value
    filter = real(file_text_read_string(file));
    file_text_readln(file);

    //Set vsync based on the read value
    vsync = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set highscore
    highscore = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set unlocked levels
    for (var i=0; i<32; i++) {
    
        unlock[i] = real(file_text_read_string(file))
        file_text_readln(file);
    }
    
    //Game cleared
    gameclear = real(file_text_read_string(file));

    //Close the file
    file_text_close(file);
}
else {

    //Fullscreen is off by default
    fullscreen = 0;

    //Set the window to double of it's original size
    filter = 2;

    //VSync is off by default
    vsync = 0;
    
    //High score
    highscore = 0;
    
    //Unlocked levels
    for (var i=0; i<32; i++) {
    
        unlock[i] = 1;
    }
    
    //Game cleared
    gameclear = 0;
}

//Apply loaded settings
alarm[1] = 1;

