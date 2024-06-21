/// @description Mark as checked

if (check == 0) 
&& (other.x > x+8) 
&& (global.fail == false) {

    //Play 'Wrong' sound
    audio_play_sound(snd_wrong, 0, false);
    
    //Maze has been failed
    global.fail = true;

    //Check it
    check = 1;
}

