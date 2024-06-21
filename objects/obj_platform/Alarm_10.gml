/// @description Start moving

if (ready == 0) {

    //If the platform is inside the view, make it move
    if (x > __view_get( e__VW.XView, 0 ) - sprite_width)
    && (x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) {
    
        ready = 1;
        exit;
    }
    else
        alarm[10] = 2;
}

