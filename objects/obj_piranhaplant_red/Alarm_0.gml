/// @description Come out from the pipe

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise
else {

    //If the player is not nearby, do not come out
    if (obj_playerparent.x > x-16)
    && (obj_playerparent.x < x+16) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise, come out
    else {
    
        //Set the vertical speed
        vspeed = -1;
        
        //Stop
        alarm[1] = 32;
    }
}

