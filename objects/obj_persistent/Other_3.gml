/// @description Save fullscreen, window size, vertical syncronization, highscore and unlocked levels. 

keyboard_key_release(vk_control);

//Open the file
var file = file_text_open_write("settings.dat");

//Save fullscreen settings
file_text_write_string(file,string(fullscreen));
file_text_writeln(file);

//Save filtering settings
file_text_write_string(file,string(filter));
file_text_writeln(file);

//Save vsync settings
file_text_write_string(file,string(vsync));
file_text_writeln(file);

//Save highscore
file_text_write_string(file,string(highscore));
file_text_writeln(file);

//Save unlocked levels
for (var i=0; i<32; i++) {

    file_text_write_string(file,string(unlock[i]));
    file_text_writeln(file);
}

//Save game clear
file_text_write_string(file,string(gameclear))

//Close the file
file_text_close(file);

