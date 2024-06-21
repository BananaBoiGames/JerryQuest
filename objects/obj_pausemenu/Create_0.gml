/// @description The pause menu

//Play 'Pause' sound
audio_play_sound(snd_pause, false, 0);

//Make sure the box doesn't animate
image_speed = 0;
image_index = 0;
image_xscale = 0;
image_yscale = 0;

//Take a screenshot.
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0);

//Deactivate the instances.
alarm[1] = 2;

//Set the choice as the first.
choice = 0;

//Handle certain actions.
ready = 0;
ready2 = 1;

//Begin scaling
alarm[0] = 2;

