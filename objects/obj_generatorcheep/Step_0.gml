/// @description Jumping cheep-cheep logic

//If the player dies, stop everything
if (instance_exists(obj_player_dead)) {

    scr_freeze();
    exit;
}

//Cap vertical speed
if (vspeed > 4) {

    vspeed = 4;
    gravity = 0;
}

//Always look to the right
xscale = 1;

//Destroy when outside the view
if (x > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+16)
|| (y > __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+16)
    instance_destroy();

