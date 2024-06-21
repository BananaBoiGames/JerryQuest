/// @description Generate the platform if the generator is inside the view.

//Do not generate if the player is dead
if (instance_exists(obj_player_dead))
exit;

//If the generator is inside the view
if (x > __view_get( e__VW.XView, 0 )-48)
&& (x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )) {

    //Generate a platform
    with (instance_create(x,y,obj_platform)) {
    
        sprite_index = other.sprite;
        speed = other.spd;
        ready = 1;
        if (other.y > room_height/2)
            direction = 90;
        else
            direction = 270;
    }
    
    //Repeat the process
    alarm[0] = round(60*time);
}

//Otherwise, deny
else
    alarm[0] = 1;

