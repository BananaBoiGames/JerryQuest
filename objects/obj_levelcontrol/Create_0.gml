/// @description Level Control object

//Default values (Check init_globals_mus for the number of the tracks)
levelmusic = noone;
leveltime = 0;

//Begin playing the music
alarm[0] = 2;

//The music can play?
musicdisable = 0;

//Disable barrier
//barrier = 1;
//alarm[5] = 3;

//Create HUD
instance_create(0,0,obj_hud);

//Background variables
bgxx[0] = 1;
bgxx[1] = 1.5;
bgxx[2] = 2;
bgxx[3] = 2.5;
bgxx[4] = 3;
bgxx[5] = 3.5;
bgxx[6] = 4;
bgxx[7] = 4.5;

//Jump to position
x = __view_get( e__VW.XView, view_current )+128;
__view_set( e__VW.Object, 0, id );
target = noone;

//Initialize system
animated_tile_init();

//Add Tiles
animated_tile_add(tls_animate, .1,
                  tls_animate1,
                  tls_animate2,
                  tls_animate3,
                  tls_animate4,
                  tls_animate5,
                  tls_animate6,
                  tls_animate7,
                  tls_animate8);

