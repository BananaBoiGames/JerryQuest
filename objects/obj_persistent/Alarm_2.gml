/// @description Stop fading to black

//Set mode to fade from black
mode = 0;

//Begin fading from black
done = 0;

//Activate everything
instance_activate_all();

//Delete the screenshot
if (background_exists(back))
    background_delete(back);

