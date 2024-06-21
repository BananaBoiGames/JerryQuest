/// @description Draw the menu.

//Draw the screenshot
if (background_exists(back)) {

    //Disable alpha blending.
    draw_enable_alphablend(0);
    
    //Draw the screenshot
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    draw_enable_alphablend(1);
}

//Draw the actual border.
draw_sprite_ext(spr_hud_pause, 0, __view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+global.gh/2, image_xscale, image_yscale, 0, c_white, 1);

//Draw if the menu if fully scaled
if (image_xscale == 1) {

    //Draw choices
    draw_sprite_ext(spr_hud_pause, 1, __view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+global.gh/2, image_xscale, image_yscale, 0, c_white, 1);
    
    //Draw cursor
    draw_sprite_ext(spr_hud_pause_cursor, 0, __view_get( e__VW.XView, 0 )+77, __view_get( e__VW.YView, 0 )+92+(choice*16), 1, 1, 0, c_white, 1);
}

