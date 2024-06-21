/// @description Level Select Cursor

//Loop 'Level Select' bgm
audio_play_sound(bgm_levelselect, 1, true);

//Cursor position
xpos = 0;
ypos = 0;

//Is the level selected?
ready = 0;

//Scrolling text
if (obj_persistent.gameclear == 0)
    str = "                     Arrows: Move, Shift: Select, Space: Swap between Mario / Luigi, Control: Go Back";
else
    str = "                     Arrows: Move, Shift: Select, Space: Swap between Mario / Luigi, Control: Go Back, H: Enable / Disable Hard Mode";

//String length
len = string_length(str);

//Scroll
scroll = 0;

