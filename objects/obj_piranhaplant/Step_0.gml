/// @description Piranha Plant logic

//If the player dies, stop everything
if (instance_exists(obj_player_dead)) {

    scr_freeze();
    exit;
}

//Set depth
depth = 10;

