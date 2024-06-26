/// @description Draw Mario

//If the animation has been set, draw the background.
if (ready) {

    if (background_exists(back)) {
    
        //Disable alpha blending.
        draw_enable_alphablend(0);
        
        //Draw the screenshot
        draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
        
        //Enable alpha blending.
        draw_enable_alphablend(1);
    }
}

//Draw Mario
draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);

