/// @description Set up animation sequence and take up a screenshot.

//Take a screenshot.
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0);

//Deactivate all instances.
instance_deactivate_all(true);

//Activate score texts
instance_activate_object(obj_score);
if (instance_exists(obj_score)) {

    with (obj_score) 
        visible = 1;
}

//Activate water
instance_activate_object(obj_water);
if (instance_exists(obj_water)) {

    with (obj_water) 
        visible = 1;
}

//Activate persistent object.
instance_activate_object(obj_persistent);

//Set the animation sequence.
switch (sequence) {

    //Small -> Super
    case (0): {
    
        //Animate
        image_speed = 0.25;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerup;
        else
            sprite_index = spr_luigi_powerup;
    } break;
    
    //Super -> Fire
    case (1): {
    
        //Animate
        image_speed = 0.4;
        
        //Loop 6 times
        loop = 6;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerup2;
        else
            sprite_index = spr_luigi_powerup2;
    } break;
    
    //Super -> Small
    case (2): {
    
        //Animate
        image_speed = 0.25;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerdown;
        else
            sprite_index = spr_luigi_powerdown;
    } break;
    
    //Fire -> Small
    case (3): {
    
        //Animate
        image_speed = 0.25;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerdown2;
        else
            sprite_index = spr_luigi_powerdown2;
    } break;
}

//Animation has been set.
ready = 1;

//Make the object visible.
visible = 1;
if (sequence > 1)
    alarm[1] = 1;

