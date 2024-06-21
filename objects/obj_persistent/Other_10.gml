/// @description Set up the screen to be displayed

//Temporary variable
var s;

//Normal
if (filter = 0)
    s = 1;

//x2
else if (filter = 1)
    s = 2;

//x3
else if (filter = 2)
    s = 3;

//Reset display
display_reset(display_aa,vsync);

//Set up the window
window_set_size(global.gw*s,global.gh*s);

//Set up the display
display_set_gui_size(global.gw*s,global.gh*s);

//Center the window
alarm[0] = 1;

