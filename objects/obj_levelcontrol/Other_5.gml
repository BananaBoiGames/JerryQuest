/// @description Reset skin and stop music

//Reset skin
global.skin = 0;

//Stop music
if (!audio_is_playing(bgm_ending)) {

    audio_stop_all();
}

//Destroy
instance_destroy();

