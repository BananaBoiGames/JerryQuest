/// @description Physics parent logic

//If the player dies, stop everything
if (instance_exists(obj_player_dead)) {

    scr_freeze();
    exit;
}

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

