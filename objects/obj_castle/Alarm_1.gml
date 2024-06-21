/// @description Replace background colour

//If there's no lightning effect in place
if (lightning == 0) {

    //Play 'Lightning' sound
    audio_play_sound(snd_lightning, 0, false);

    //Increment lightning
    lightning++;
    
    //Set background colour
    __background_set_colour( make_colour_rgb(248, 248, 136) );
    
    //Repeat the process
    alarm[1] = 7;
}

//Otherwise, 
else {
    
    switch (lightning) {
    
        //1
        case (1): {
        
            lightning = 2;
            __background_set_colour( make_colour_rgb(216, 216, 120) );
            alarm[1] = 7;
        } break;
        
        //2
        case (2): {
        
            lightning = 3;
            __background_set_colour( make_colour_rgb(184, 184, 104) );
            alarm[1] = 7;
        } break;
        
        //3
        case (3): {
        
            lightning = 4;
            __background_set_colour( make_colour_rgb(152, 152, 88) );
            alarm[1] = 7;
        } break;
        
        //4
        case (4): {
        
            lightning = 5;
            __background_set_colour( make_colour_rgb(120, 120, 62) );
            alarm[1] = 7;
        } break;
        
        //5
        case (5): {
        
            lightning = 6;
            __background_set_colour( make_colour_rgb(88, 88, 56) );
            alarm[1] = 7;
        } break;
        
        //6
        case (6): {
        
            lightning = 7;
            __background_set_colour( make_colour_rgb(56, 56, 40) );
            alarm[1] = 7;
        } break;
        
        //7
        case (7): {
        
            lightning = 8;
            __background_set_colour( make_colour_rgb(24, 24, 14) );
            alarm[1] = 7;
        } break;
        
        //1
        case (8): {
        
            lightning = 0;
            __background_set_colour( c_black );
            alarm[1] = 100+random(round(200));
        } break;
    }
}

