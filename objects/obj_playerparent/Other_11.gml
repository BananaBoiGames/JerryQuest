/// @description Make the player bounce

//Set the vertical speed
vspeed = -4.1;

//Boost jump
y--;

//Switch to jump state
state = cs_jump;

//Prevent variable jumping
if (global.smb2jmode == 1)
&& (keyboard_check(vk_shift))
    jumping = 1;
else
    jumping = 2;

