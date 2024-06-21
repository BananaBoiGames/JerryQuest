/// @description It's a me, Luigi!

//Inherit variables from parent
event_inherited();

//Palette
palette_index = pal_luigi;

//Inherit physical variables
if (global.smb2jmode == true)
    scr_physics_luigi();
else
    scr_physics_mario();

