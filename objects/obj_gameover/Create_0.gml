/// @description The game is over, wanna continue or you will chicken out?

//Inherit event
event_inherited();

//Play 'Game Over' theme
audio_play_sound(bgm_gameover, 0, false);

//Set the choice as the first.
choice = 0;

