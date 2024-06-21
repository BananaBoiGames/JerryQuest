/// @description Title Menu

//Inherit event
event_inherited();

//Play 'Title Screen' bgm
audio_loop_sound(global._music[0], global._st[0], global._en[0], 48000, 1);

//First level
mylevel = "1-1";

//Page
page = 0;

//Choice
current = 1;

//If the game has been cleared
if (obj_persistent.gameclear == true) {
    
    //Menu 0: Main
    menu[0,0] = 1;
    menu[0,1] = " NEW GAME";
    
    //Menu 1: New Game
    menu[1,0] = 1;
    menu[1,1] = " JERRY GAME";
    
}

//Otherwise, set default menu
else {
    
    //Menu 0: Main
    menu[0,0] = 1;
    menu[0,1] = " NEW GAME";
    
    //Menu 1: New Game
    menu[1,0] = 1;
    menu[1,1] = " JERRY GAME";

}

