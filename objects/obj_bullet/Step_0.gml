/// @description Bullet bill logic

//If the player dies, stop everything
if (instance_exists(obj_player_dead)) {

    scr_freeze();
    exit;
}

//Destroy when outside the view
if (x < __view_get( e__VW.XView, view_current )-16)
|| (x > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+16)
|| (y > __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+16)
    instance_destroy();

