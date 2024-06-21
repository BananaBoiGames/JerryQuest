/// @description Reset block

//Inherit event
event_inherited();

//Destroy empty blocks
ready = 1;
alarm[1] = 2;

//Create it again
myID = instance_create(x, y, myOBJ);

