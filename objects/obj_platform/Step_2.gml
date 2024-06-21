/// @description Moving platform logic

//Inherit default event
event_inherited();
    
//If the platform can move
if (ready == 1) {

    //Move in contact with arrow
    if (collision_rectangle(x,y,x+sprite_width,y+15,obj_up,0,0))
        vspeed -= 0.0324;
    else if (collision_rectangle(x,y,x+sprite_width,y+15,obj_down,0,0))
        vspeed += 0.0324;
    else if (collision_rectangle(x,y,x+sprite_width,y+15,obj_left,0,0))
        hspeed -= 0.0324;
    else if (collision_rectangle(x,y,x+sprite_width,y+15,obj_right,0,0))
        hspeed += 0.0324;
}

//Destroy when outside the room
if (y < -32)
|| (y > room_height+32)
    instance_destroy();

