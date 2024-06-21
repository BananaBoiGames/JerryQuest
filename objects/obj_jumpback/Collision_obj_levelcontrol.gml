/// @description Change the position of the camera

//With all enemies
with (obj_reset) alarm[0] = 2;

//Activate all deactivated enemies and destroy them
instance_activate_object(obj_enemyparent);
with (obj_enemyparent) {

    instance_destroy();
}

//With the background
with (obj_castle) mazeview -= other.rv / 1.5;

//With the camera
//obj_levelcontrol.x = rx;
//obj_levelcontrol.alarm[6] = 3;
//obj_levelcontrol.barrier = false;

//Reset the player position
if (instance_exists(obj_playerparent)) {

    with (obj_playerparent) {
    
        x = ((__view_get( e__VW.XView, 0 )*-1)+self.x)+obj_levelcontrol.x-128;
    }
}

//Reset view
__view_set( e__VW.XView, view_current, rx - 128 );

