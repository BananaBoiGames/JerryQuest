/// @description draw_string_port(string,x,y,pw,ph,scroll);
/// @param string
/// @param x
/// @param y
/// @param pw
/// @param ph
/// @param scroll
function draw_string_port(argument0, argument1, argument2, argument3, argument4, argument5) {

	/*
	**  Usage:
	**      draw_string_port(string,x,y,pw,ph,scroll);
	**
	**  Arguments:
	**      argument0   ==  string
	**      argument1   ==  x position
	**      argument2   ==  y position
	**      argument3   ==  port width
	**      argument4   ==  port height
	**      argument5   ==  scroll
	**
	**  //Returns:
	**      The text given in a marquee animation
	*/

	//Create the surface
	var s = surface_create(argument3,argument4);

	//If the surface exists
	if (surface_exists(s)) {

	    //Set the target
	    surface_set_target(s);
    
	    //Clear alpha
	    draw_clear_alpha(c_black,0);
    
	    //Draw the text
	    draw_text(argument5, 0, string_hash_to_newline(argument0))
    
	    //Reset target
	    surface_reset_target();
    
	    //Draw the surface
	    draw_surface(s,argument1,argument2);
    
	    //Free the surface
	    surface_free(s);
	}



}
