/// @description Collision

//checks if touching oPlayer
if place_meeting(x, y, oPlayer) {

	//checks if sfxComplete isn't playing, if not then play sfxComplete
	if !audio_is_playing(sfxComplete) audio_play_sound(sfxComplete, 0, false);
	
	//checks if oEnd doesn't exist, if not then create oEnd object
	if !instance_exists(oEnd) instance_create_layer(x, y, "Instances", oEnd);
	
	//destroy itself
	instance_destroy(self);

}