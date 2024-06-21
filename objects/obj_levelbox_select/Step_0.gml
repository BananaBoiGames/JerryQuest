/// @description Manage cursor position and choice

//Update cursor position
x = 16+(41*xpos)-xpos;
y = 12+(25*ypos)-ypos;

//If the level has not been chosen
if (ready == 0) 
&& (obj_player_ls.ready == 0) {

    //Move to the left
    if (keyboard_check_pressed(vk_left)) {
    
        //Play 'Fireball' sound
        audio_play_sound(snd_fireball, 0, false);    
    
        //Update position
        xpos--;
        if (xpos < 0)
            xpos = 3;
    }
    
    //Move to the right
    else if (keyboard_check_pressed(vk_right)) {
    
        //Play 'Fireball' sound
        audio_play_sound(snd_fireball, 0, false);    
    
        //Update position
        xpos++;
        if (xpos > 3)
            xpos = 0;
    }
    //Move up
    else if (keyboard_check_pressed(vk_up)) {
    
        //Play 'Fireball' sound
        audio_play_sound(snd_fireball, 0, false);    
    
        //Update position    
        ypos--;
        if (ypos < 0)
            ypos = 7;
    }
    
    //Move down
    else if (keyboard_check_pressed(vk_down)) {
    
        //Play 'Fireball' sound
        audio_play_sound(snd_fireball, 0, false);    
    
        //Update position
        ypos++;
        if (ypos > 7)
            ypos = 0;
    }
    
    //Select current box
    else if (keyboard_check_pressed(vk_shift)) {
    
        //Check for a box
        var mybox = collision_point(x + 16, y + 8, obj_levelbox, 0, 0);
        
        //If said box exists
        if (mybox)
            with (mybox) event_user(0);
    }
    
    //Enable / Disable Hard Mode
    else if (keyboard_check_pressed(ord("H")))
    && (obj_persistent.gameclear == 1)
        global.hardmode = !global.hardmode;
    
    //Go back to level select screen
    else if (keyboard_check_pressed(vk_control))
        room_goto(rm_title);
}

//Scroll text
scroll -= 1;
if (scroll < -(len*8))
    scroll = 0;

