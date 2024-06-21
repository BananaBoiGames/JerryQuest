/// @description Replace background

//Switch between backgrounds
switch (myback) {

    case (bgr_castle): myback = bgr_castle_b; break;
    case (bgr_castle_b): myback = bgr_castle_c; break;
    case (bgr_castle_c): myback = bgr_castle_d; break;
    case (bgr_castle_d): myback = bgr_castle_e; break;
    case (bgr_castle_e): myback = bgr_castle_f; break;
    case (bgr_castle_f): myback = bgr_castle_g; break;
    case (bgr_castle_g): myback = bgr_castle_h; break;
    case (bgr_castle_h): myback = bgr_castle; break;
}

//Repeat the process
alarm[0] = 7;

