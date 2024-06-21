/// @description Destroy when outside the view

//If the player dies, stop everything
if (instance_exists(obj_player_dead)) {

    scr_freeze();
    exit;
}

//Destroy when outside the view
if (x < __view_get( e__VW.XView, 0 )-48)
    instance_destroy();

