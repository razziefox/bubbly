// Sets the games scale
function game_setScale(argument0){
	
	//sets game width and height from game_info
	surface_resize(application_surface, game_width*argument0, game_height*argument0);	
	
	//sets window size
	window_set_size(game_width*argument0, game_height*argument0);
	return;

}

//gets current game version
function game_version() {

	//checks what platform delivery flaps is running on
	if os_type = os_linux or os_type = os_macosx {
	
		//returns the regular gm_version value
		return GM_version;
	
	} else {
		
		//modifies string to only include three version numbers instead of 4.
		//example: 1.0.0.0 -> 1.0.0
		return string_delete(GM_version, string_length(GM_version)-1, 2);
	
	}

}