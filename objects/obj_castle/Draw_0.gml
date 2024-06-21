/// @description Draw castle background

//Draw the background given in 'myback'
draw_background_tiled_ext(myback, (__view_get( e__VW.XView, 0 ) / 1.5) + mazeview, __view_get( e__VW.YView, 0 )+myy, 1, 1, c_white, 1);

//Always draw a rectangle above
draw_rectangle_colour(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + 32, c_black, c_black, c_black, c_black, 0);

