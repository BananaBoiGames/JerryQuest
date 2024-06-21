/// @description Display status message and fade effect

//Draws the screenshot shown when fading to black
if (background_exists(back)) {

    draw_enable_alphablend(0);
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    draw_enable_alphablend(1);
}

