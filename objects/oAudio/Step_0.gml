/// @description Collision

//checks if player is touching object and if music isn't playing
if place_meeting(x, y, oPlayer) and !audio_is_playing(music) {
	
	//stops all audio
	audio_stop_all();
	
	//plays sound file in loop
	audio_play_sound(music, 0, true);

}