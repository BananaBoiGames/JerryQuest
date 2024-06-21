/// @description Snow flake

//Animate
image_speed = 0;
image_index = choose(0,1);

//Alpha
image_alpha = 0.5;

//Set the motion
path_start(pth_snow, random_range(0.5, 3), path_action_continue, false);

