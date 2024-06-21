/// @description Handle the scaling.

if (ready2 == 1) {

    if (image_xscale < 1) {
    
        //Scale menu up
        image_xscale += 0.05;
        image_yscale += 0.05;
        
        //Repeats the process
        alarm[0] = 1;
    }
    
    else {
    
        image_xscale = 1;
        image_yscale = 1;
        ready = 1;
    }
}

else if (ready2 == 2) {

    if (image_xscale > 0) {
    
        //Scale menu down
        image_xscale -= 0.05;
        image_yscale -= 0.05;
        
        //Repeats the process
        alarm[0] = 1;
    }
    
    else {
            
        //Activate everything
        instance_activate_all();
        
        //Delete the screenshot if it exists.
        if (background_exists(back)) {
        
            background_delete(back);
        }
        
        //Reset the state of the shift key
        keyboard_clear(vk_shift);
        
        //Destroy the message box
        instance_destroy();
    }
}

