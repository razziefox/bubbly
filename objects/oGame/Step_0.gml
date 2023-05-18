/// @description Keyboard shortcuts & Window Handling

//checks if escape is pressed
if keyboard_check_pressed(vk_escape) {

	//end game
	game_end();

}

//checks if game is running in a browser
if os_browser {
	
	//adjust game size based on browser size
	window_set_size(browser_width, browser_height)
	
}