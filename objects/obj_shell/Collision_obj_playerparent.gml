/// @description Special player collision script

//If the player is invulnerable, deny this event
if (instance_exists(obj_invincibility))
exit;

//If the shell can harm the player, do default script
if (ready == 2) {

    if (stomp != -1)
    || (other.invulnerable == -1) {
    
        //If the player is moving down
        if (other.vspeed != 0) {
        
            //If the enemy can be stomped and it is not underwater
            if (stomp == 0)
            && (other.swimming == false) { 
            
                //Play 'Stomp' sound
                audio_play_sound(snd_stomp, 0, false);
            
                //Prevent certain enemies from getting double stomped
                if (vspeed < 0) {
                
                    y = yprevious;
                    if (other.vspeed > 0)
                        other.y = other.yprevious;
                }
                else {
                
                    if (other.vspeed > 0)
                        other.y = other.yprevious;
                }
                
                //Bounce the player
                with (other) event_user(1);
        
                //Do not give points if delay is active
                if (shelldelay <= 0) {
                
                    //Get points based on combo
                    if (other.hitcombo < 10-handicap_stomp) {
                    
                        //If the player did 10 or less consecutive stomps
                        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) 
                            event_user((0+other.handicap_stomp)+obj_playerparent.hitcombo);
                    }
                    else {
                    
                        audio_play_sound(snd_1up, 0, false);
                        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) 
                            event_user(10);
                    }
                    
                    //Increment combo
                    other.hitcombo++;
                }
                
                //Stomp the enemy
                event_user(1);
            }
            
            //Otherwise, hurt the player
            else
                with (other) event_user(0);  
        }
        
        //Otherwise, hurt the player
        else
            with (other) event_user(0);
    }
}

//Otherwise, allow kick
else if (ready == 0) {

    //If the player is not moving up
    if (other.vspeed >= 0) {
    
        //Play 'Kick' sound.
        audio_play_sound(snd_kick, 0, false);
        
        //Create hit
        with (instance_create(x,y,obj_smoke)) {
        
            sprite_index = spr_shellthump;
            image_speed = 0.5;
        }
        
        //Get points
        with (instance_create((bbox_left+bbox_right)/2-8, y, obj_score)) {
        
            if (obj_playerparent.hitcombo < 8)
                event_user(2+obj_playerparent.hitcombo);
            else {
            
                audio_play_sound(snd_1up, 0, false);
                event_user(10);
            }
        }
                    
        //Increment delay
        shelldelay = 24;
        
        //Kick
        ready = 1;
        alarm[0] = -1;
        alarm[1] = -1;
        
        //Animate
        image_speed = 0.3;
        
        //Increment player combo
        obj_playerparent.hitcombo++;
        
        //If the player is at the left, send the shell to the right
        if (obj_playerparent.x < x) {
        
            hspeed = 3;
            prevhspeed = hspeed;
        }
        
        //Otherwise, send it to the left
        else if (obj_playerparent.x > x) {
        
            hspeed = -3;
            prevhspeed = hspeed;
        }
    }
}

