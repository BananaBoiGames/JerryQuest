/// @description If the animation has ended and no more loops are needed.

if (ready) {

    //Does the animation still loop.
    if (loop > 0)
        loop--;
    
    else {
    
        //Delete the screenshot if it exists.
        if (background_exists(back)) {
        
            background_delete(back);
        }
        
        //Activate all instances.
        instance_activate_all();
        
        //Destroy
        instance_destroy();
    }
}

