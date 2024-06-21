/// @description Fake castle background

//Parallax value
mazeview = 0;
myy = 0;

//Lightning
lightning = 0;

//Real bowser castle animation
if (string_char_at(global.world, 1) == "8") {

    myback = bgr_castle;
    myy = 8;
    alarm[0] = 7;
    alarm[1] = 100;
}
else
    myback = bgr_castle_fake;

