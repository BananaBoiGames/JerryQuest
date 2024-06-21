/// @description Make lakitu go away

if (goaway = 0) 
&& (obj_levelcontrol.x > x) {

    //Hide inside the cloud
    image_speed = 0;
    image_index = 1;
    
    //Go away
    goaway = 1;
    
    //Set the horizontal speed
    hspeed = -1;
}

