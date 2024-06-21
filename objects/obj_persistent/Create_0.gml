/// @description SMBEngine Persistent Object

//Initialize the palette swapping system
pal_swap_init_system(shd_palette_swapper, false);

//Initialize global variables
init_globals_mus();
init_globals();
init_pixel(1);

//How the screen is fading
//0: From black, 1: To black
mode = 0

//How much the screen is faded
done = 0

//Screenshot of the game, if it exists
back = -1

//Ports
port_x = 0;
port_y = 0;

//Game width
global.gw = 256;

//Game height
global.gh = 224;

//Message?
message = noone;

//Alternate keys
keyboard_set_map(ord("X"), vk_shift);
keyboard_set_map(ord("Z"), vk_control);

//Set the in-game fonts
global.hud_font = font_add_sprite(spr_hudfont,ord("!"), 0, 0);
global.hud_fontr = font_add_sprite(spr_hudfont_red,ord("!"), 0, 0);
global.hud_fontw = font_add_sprite(spr_hudfont_menus,ord("!"), 0, 0);

//Set the epsilon value for floating point numbers
math_set_epsilon(0.0001);

//Disable application surface automatic drawing
application_surface_draw_enable(false);

