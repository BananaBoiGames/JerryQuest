/// @description Underwater ripple effect

//Radius of effect
var ir = -4;

//Left boundary
var ix = __view_get( e__VW.XView, view_current )-16;

//Top boundary
var iy = ystart;

//Width
var iw = 264;

//Height
var ih = 224;

//Draw only if the y position is above the bottom boundary
if (iy < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )) {

    //Surface
    sf = surface_create(iw, ih);
    
    //Copy the surface
    surface_copy_part(sf, 0, 0, application_surface, ix-__view_get( e__VW.XView, 0 ), iy-__view_get( e__VW.YView, 0 ), iw, ih);
    
    //Disable alpha blending
    draw_enable_alphablend(false);
    
    //Draw part of the surface
    for (i=0; i<ih; i++) {
    
        draw_surface_part_ext(sf, 0, i, iw, 1, ix-8+cos((i*3+waverot)*pi/180)*ir, iy+i, 1.08, 1, c_white, 1);
    }
    
    //Free surface
    surface_free(sf);
    
    //Enable alpha blending
    draw_enable_alphablend(true);
}

