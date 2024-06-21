/// @description Prepare to fade to black

//Fade to black
mode = 1;

//Set the pixel size
size = 0;

//Take a screenshot
back = background_create_from_surface(application_surface, 0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0, 0);

//Set alarm to execute when the next room starts
alarm[3] = 1;

