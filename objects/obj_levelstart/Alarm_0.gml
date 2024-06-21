/// @description Go to the current level

//If a checkpoint has been touched, go to the given checkpoint
if (global.checkpoint != noone)
    room_goto(global.checkpointroom);

//Otherwise
else {

    //If the player is playing
    switch (global.world) {
    
        //World 1-1
        case ("1-1"): room_goto(rm_w1_1); break;
        
        //World 1-2
        case ("1-2"): room_goto(rm_w1_2); break;
        
        //World 1-3
        case ("1-3"): room_goto(rm_w1_3); break;
        
        //World 1-4
        case ("1-4"): room_goto(rm_w1_4); break;
        
        //World 2-1
        case ("2-1"): room_goto(rm_w2_1); break;
        
        //World 2-2
        case ("2-2"): room_goto(rm_w2_2); break;
        
        //World 2-3
        case ("2-3"): room_goto(rm_w2_3); break;
        
        //World 2-4
        case ("2-4"): room_goto(rm_w2_4); break;
        
        //World 3-1
        case ("3-1"): room_goto(rm_w3_1); break;
        
        //World 3-2
        case ("3-2"): room_goto(rm_w3_2); break;
        
        //World 3-3
        case ("3-3"): room_goto(rm_w3_3); break;
        
        //World 3-4
        case ("3-4"): room_goto(rm_w3_4); break;
        
        //World 4-1
        case ("4-1"): room_goto(rm_w4_1); break;
        
        //World 4-2
        case ("4-2"): room_goto(rm_w4_2); break;
        
        //World 4-3
        case ("4-3"): room_goto(rm_w4_3); break;
        
        //World 4-4
        case ("4-4"): room_goto(rm_w4_4); break;
        
        //World 5-1
        case ("5-1"): room_goto(rm_w5_1); break;
        
        //World 5-2
        case ("5-2"): room_goto(rm_w5_2); break;
        
        //World 5-3
        case ("5-3"): room_goto(rm_w5_3); break;
        
        //World 5-4
        case ("5-4"): room_goto(rm_w5_4); break;
        
        //World 6-1
        case ("6-1"): room_goto(rm_w6_1); break;
        
        //World 6-2
        case ("6-2"): room_goto(rm_w6_2); break;
        
        //World 6-3
        case ("6-3"): room_goto(rm_w6_3); break;
        
        //World 6-4
        case ("6-4"): room_goto(rm_w6_4); break;
                
        //World 7-1
        case ("7-1"): room_goto(rm_w7_1); break;
        
        //World 7-2
        case ("7-2"): room_goto(rm_w7_2); break;
        
        //World 7-3
        case ("7-3"): room_goto(rm_w7_3); break;
        
        //World 7-4
        case ("7-4"): room_goto(rm_w7_4); break;
        
        //World 8-1
        case ("8-1"): room_goto(rm_w8_1); break;
        
        //World 8-2
        case ("8-2"): room_goto(rm_w8_2); break;
        
        //World 8-3
        case ("8-3"): room_goto(rm_w8_3); break;
        
        //World 8-4
        case ("8-4"): room_goto(rm_w8_4); break;
        
        //Default
        default: room_goto(rm_w1_1); break;
    }
}

