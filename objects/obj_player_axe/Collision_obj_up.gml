/// @description If not jumping, jump

if (gravity == 0) {

    audio_play_sound(snd_jump, 0, false);
    gravity = 0.1;
    vspeed = -6;
    y--;
}

