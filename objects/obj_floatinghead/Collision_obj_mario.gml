if (obj_mario.vspeed > 0 && obj_mario.y < y) {
    instance_destroy();
    
    alarm[0] = 1;
	
    obj_mario.vspeed = -10;
}
