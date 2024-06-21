/// @description Draw 'Game Over' screen

//Inherit event
event_inherited();

//Draw screen
draw_sprite_ext(spr_hud_gameover, global.player, 0, 0, 1, 1, 0, c_white, 1);

//Draw choice
draw_sprite_ext(spr_hud_gameover_cursor, 0, __view_get( e__VW.XView, 0 )+68, __view_get( e__VW.YView, 0 )+102+(choice*16), 1, 1, 0, c_white, 1);

