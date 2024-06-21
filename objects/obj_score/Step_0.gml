/// @description Stay in view

//Stay in the view
x = __view_get( e__VW.XView, view_current );

//Prevent the effect from appearing outside the view
if (_xx < 2)
    _xx = 2;
else if (_xx > 236)
    _xx = 236;

//Prevent the effect from going too high on the screen
if (y < __view_get( e__VW.YView, view_current )+40)
    y = __view_get( e__VW.YView, view_current )+40;

