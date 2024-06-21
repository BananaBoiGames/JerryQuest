/// @description Final Castle Maze Manager

/*
//  This object uses creation code
//
//      rx               = Camera Restart position
//      rv               = Background Restart position
*/

//Default variables
rx = 0;
rv = 0;

//Do not draw backgrounds
if (instance_number(obj_castle) == 0)
    instance_create(0,0,obj_castle);

/* */
/*  */
