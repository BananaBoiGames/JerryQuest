/// @description Shoot a bullet

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise
else {

    //If the player is nearby the cannon, do not shoot
    if (obj_playerparent.x > bbox_left-32)
    && (obj_playerparent.x < bbox_right+32) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise
    else {
    
        //If the cannon is inside the view
        if (x > __view_get( e__VW.XView, 0 )-16)
        && (x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) {
    
            //Play 'Cannon' sound
            audio_play_sound(snd_cannon, 0, false);
        
            //If the player is at the left
            if (obj_playerparent.x < bbox_left-32) {
            
                //Create smoke
                instance_create(bbox_left-12, y, obj_smoke);
            
                //Shoot a bullet to the left
                with (instance_create(bbox_left-4, y+1, obj_bullet)) {
                
                    hspeed = -1.5;
                    xscale = -1;
                }
            }
            
            //Otherwise, if the player is at the right
            else if (obj_playerparent.x > bbox_right+32) {
            
                //Create smoke
                instance_create(bbox_right-4, y-1, obj_smoke);
            
                //Shoot a bullet to the left
                with (instance_create(bbox_right+5, y+1, obj_bullet)) {
                
                    hspeed = 1.5;
                    xscale = 1;
                }        
            }
            
            //Repeat
            alarm[0] = 90+round(random(120));
        }
        
        //Otherwise, wait
        else {
        
            alarm[0] = 1;
            exit;
        }
    }
}

