/// @description Lakitu egg logic

//If the player dies, stop everything
if (instance_exists(obj_player_dead)) {

    scr_freeze();
    exit;
}

//Default wall event
event_user(3);

//Default floor event
event_user(4);

//Turn into a spiny
if (gravity == 0) {

    instance_create(x,y,obj_spiny);
    instance_destroy();
    exit;
}

//Destroy if outside the view
if (bbox_top > __view_get( e__VW.WView, view_current )+32)
    instance_destroy();

