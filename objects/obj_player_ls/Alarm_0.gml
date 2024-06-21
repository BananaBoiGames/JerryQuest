/// @description Go up as a different character

//Play 'Warp' sound
audio_play_sound(snd_warp, 0, false);

//Change player
global.player = !global.player;

//Set the vertical speed
vspeed = -1;

//Stop
alarm[1] = 48;

//Set up the character sprite
if (global.player == 0)
    sprite_index = scr_mario_pose();
else
    sprite_index = scr_luigi_pose();

